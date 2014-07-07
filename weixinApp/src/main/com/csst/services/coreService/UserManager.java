package com.csst.services.coreService;

import java.io.File;
import java.util.List;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ResponseEntity;

import com.csst.popular.api.MediaAPI;
import com.csst.popular.api.MenuAPI;
import com.csst.popular.api.MediaAPI.MediaType;
import com.csst.popular.api.UserAPI;
import com.csst.popular.bean.BaseResult;
import com.csst.popular.bean.FollowResult;
import com.csst.popular.bean.FollowResult.Data;
import com.csst.popular.bean.Group;
import com.csst.popular.bean.Media;
import com.csst.popular.bean.User;
import com.csst.services.common.WeixinUtil;
import com.csst.services.pojo.AccessToken;
import com.csst.services.pojo.Button;
import com.csst.services.pojo.CommonButton;
import com.csst.services.pojo.ComplexButton;
import com.csst.services.pojo.Menu;
import com.csst.services.pojo.ViewButton;
import com.csst.services.util.Weather;

public class UserManager {
	private static Logger log = LoggerFactory.getLogger(UserManager.class);  
	  
    public static void main(String[] args) throws Exception {  
        // 第三方用户唯一凭证  
        String appId = "wx872de518202f19d9";  
        // 第三方用户唯一凭证密钥  
        String appSecret = "82f0e3528d1e287af9444cd1068250ac";  
        // 调用接口获取access_token  
        AccessToken at = WeixinUtil.getAccessToken(appId, appSecret);  
       //附件上传
       UserAPI user = new UserAPI();
       //查询所有分组
     /*  Group group = user.groupsGet(at.getToken());
       System.out.println(group.getGroup());
       System.out.println(group.getGroups().size());
       System.out.println(group.getGroups().get(0).getId());
       System.out.println(group.getGroups().get(1).getId());
       System.out.println(group.getGroups().get(2).getName());*/
       //userGet获取用户列表
       FollowResult fr = user.userGet(at.getToken(), null);
       System.out.println("关注该公众账号的总用户数:"+fr.getTotal()+",拉取的OPENID个数:"+fr.getCount()+",拉取列表的后一个用户的OPENID："+fr.getNext_openid());
       String[] data = fr.getData().getOpenid();
       for(String d:data){
    	   String openID = d;
    	   User u = user.userInfo(at.getToken(), openID);
    	   System.out.println("昵称："+u.getNickname()+",性别："+u.getSex()+"，城市："+u.getCity()+",所在国家："+u.getCity()+",省份:"+u.getProvince()+",用户头像:"+u.getHeadimgurl()+",关注时间："+u.getSubscribe_time());
       }
    }  
  
      
   
    
    
}
