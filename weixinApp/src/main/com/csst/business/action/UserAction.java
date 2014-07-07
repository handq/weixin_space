package com.csst.business.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;






import java.util.Map;
import java.util.Set;

import javax.print.attribute.HashAttributeSet;

import com.csst.business.common.MD5Code;
import com.csst.business.model.BUser;
import com.csst.business.model.TWgroup;
import com.csst.business.model.TWuser;
import com.csst.business.service.IUserService;
import com.csst.popular.api.UserAPI;
import com.csst.popular.bean.FollowResult;
import com.csst.popular.bean.Group;
import com.csst.popular.bean.User;
import com.csst.popular.bean.Group.GroupData;
import com.csst.services.Thread.TokenThread;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private IUserService userService;
	private BUser user;
	private boolean flag;
	private User wuser;
	private Group group;
	private List<User> UserList;
	private List<GroupData> groupList;
	private String nextOpenID;
	private static Map<Integer,Set<User>> gumap = new HashMap<Integer,Set<User>>();
;
	
	public String testAction(){
		System.out.println("=============================");
		return "bbb";
	}
	//登录验证
	public boolean volidate(String userName,String userPass){
		boolean flag = false;
		BUser buser = new BUser();
		buser.setUserName(userName);
		MD5Code md5 = new MD5Code();
		buser.setUserPass(md5.getMD5ofStr(userPass));
		user = userService.volidate(buser);
		if(user.getId()!=null){
			flag=true;
		}
		return flag;
	}
	//登录
	public String login(){
		MD5Code md5 = new MD5Code();
		user.setUserPass(md5.getMD5ofStr(user.getUserPass()));
		user = userService.volidate(user);
		ActionContext.getContext().getSession().put("user",user);
		return "mainPage";
	}
	//退出系统
	public String layout(){
		System.out.println(ActionContext.getContext().getSession().get("user"));
		ActionContext.getContext().getSession().clear();
		System.out.println(ActionContext.getContext().getSession().get("user"));
		return "login";
	}
	
	public String getWuserList(){
		//获取accessToken
		String at = TokenThread.accessToken.getToken();
		UserAPI userapi = new UserAPI();
        FollowResult fr = userapi.userGet(at, null);
       // System.out.println("关注该公众账号的总用户数:"+fr.getTotal()+",拉取的OPENID个数:"+fr.getCount()+",拉取列表的后一个用户的OPENID："+fr.getNext_openid());
        nextOpenID = fr.getNext_openid();
        String[] data = fr.getData().getOpenid();
        UserList = new ArrayList<User>();
        gumap.clear();
        for(String d:data){
     	   String openID = d;
     	   User u = userapi.userInfo(at, openID);
     	   UserList.add(u);
     	  Group g = userapi.groupsGetid(at,openID);
         Integer gd= g.getGroupid();
         Set<User> usrlist = new HashSet<User>();
     	 
     	 if(gumap.get(gd)!=null){
     		gumap.get(gd).add(u); 
     	 }else{
     		usrlist.add(u);
     		gumap.put(gd, usrlist);
     	 }
        }
        groupList = new ArrayList<GroupData>();
        Group group = userapi.groupsGet(at);
        List<GroupData> groupdatas = group.getGroups();
        for(GroupData gr:groupdatas){
        	groupList.add(gr);
        }
		return "userManager";
	}
	
	//根据分组查找改组用户
	public String getUserByGroup(){
		UserList = new ArrayList<User>();
		UserList.addAll(gumap.get(group.getGroupid()));
		groupList = new ArrayList<GroupData>();
		//获取accessToken
		String at = TokenThread.accessToken.getToken();
		UserAPI userapi = new UserAPI();
        Group group = userapi.groupsGet(at);
        List<GroupData> groupdatas = group.getGroups();
        for(GroupData gr:groupdatas){
        	groupList.add(gr);
        }
		return "userManager";
	}
	//用户关注，更新用户信息到本地用户表
	public void AddorUpdateUser(String fromUserName) { 
		System.out.println(fromUserName);
		//获取accessToken
		String at = TokenThread.accessToken.getToken();
		UserAPI userapi = new UserAPI();
		User user = userapi.userInfo(at, fromUserName);
		Group gr = userapi.groupsGetid(at, fromUserName);
		TWuser twuser = new TWuser();
		TWgroup twrp = new TWgroup();
		twrp.setId(gr.getGroupid().toString());
		twuser.setTWgroup(twrp);
		twuser.setWCity(user.getCity());
		twuser.setWCountry(user.getCountry());
		twuser.setWHeadimgurl(user.getHeadimgurl());
		twuser.setWLanguage(user.getLanguage());
		twuser.setWNickname(user.getNickname());
		twuser.setWOpenid(user.getOpenid());
		twuser.setWProvince(user.getProvince());
		twuser.setWSex(user.getSex());
		twuser.setWSubscribe(user.getSubscribe());
		twuser.setWSubscribeTime(user.getSubscribe_time().doubleValue());
		twuser.setWUnionid(user.getUnionid());
		userService.AddorUpdateUser(twuser);
	}
	//*************************************setter and getter**********************************//
	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public BUser getUser() {
		return user;
	}

	public void setUser(BUser user) {
		this.user = user;
	}

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}


	public void setWuser(User wuser) {
		this.wuser = wuser;
	}
	public Group getGroup() {
		return group;
	}
	public void setGroup(Group group) {
		this.group = group;
	}
	
	public List<GroupData> getGroupList() {
		return groupList;
	}
	public void setGroupList(List<GroupData> groupList) {
		this.groupList = groupList;
	}
	public String getNextOpenID() {
		return nextOpenID;
	}
	public void setNextOpenID(String nextOpenID) {
		this.nextOpenID = nextOpenID;
	}
	public List<User> getUserList() {
		return UserList;
	}
	public void setUserList(List<User> userList) {
		UserList = userList;
	}
	public User getWuser() {
		return wuser;
	}
	public static Map<Integer, Set<User>> getGumap() {
		return gumap;
	}
	public static void setGumap(Map<Integer, Set<User>> gumap) {
		UserAction.gumap = gumap;
	}
	
	
}
