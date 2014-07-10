<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://www.hx.com/tags" prefix="hx" %>
<%   String path = request.getContextPath();   
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<html>
	<head>
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css">
	<style type="text/css">
		body{
			background-color: white;
		}
		a{
			 color:blue;
		}
		a:HOVER {
				color: red;
			}
	</style>
	<script type="text/javascript">
		function checkData(groupId){
			top.document.getElementById("mainFrame").src="<%=basePath%>user/getUserByGroup.action?group.groupid="+groupId;
		}
		
		function addGroup(){
			var subGroupWin = window.showModalDialog("/pages/admin/wuserGroupAdd.jsp","增加用户分组","dialogWidth:400px;dialogHeight:280px;dialogLeft:200px;center:yes;help:no;resizable:no;status:no;scroll=no");
			subGroupWin.onunload(dorload());
		}
		function dorload(){
			alert(1);
			top.document.getElementById("mainFrame").src="<%=basePath%>user/getWuserList.action";

		}
	</script>
	</head>
	<body>
		<div style="font-size: 12px;line-height:25px;color: red ">当前位置：用户管理</div>
		<div Style="width:80%;float: left">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="thetable" style="font-size: 13px;margin-top: 10px;">
			<thead>
				<tr>
					<td colspan="6" style="font-weight: bold;color: blue;line-height: 20px;">&nbsp;&nbsp;用户列表</td>
				</tr>
				<tr>
					<td colspan="6" style="width: 100%"><hr/></td>
				</tr>
				<tr>
					<td width="5%" align="center" valign="middle">
						头像
					</td>
					<td width="15%" align="center" valign="middle">
						昵称
					</td>
					 <td width="20%" align="center" valign="middle">
						地址
					</td>
					<td width="10%" align="center" valign="middle">
						关注时间
					</td>
					<td width="25%" align="center" valign="middle">
						操作
					</td>
				</tr>
			</thead>
			<s:iterator value="#request.UserList" var="user" status="statu">
			 <tr onMouseOut="this.style.background='#eeeeee'"
					onMouseOver="this.style.background='#F4E088'" bgcolor="#eeeeee">
				<td valign="middle">
					<input type="hidden" name="user.openid"/>
					<img   style="width: 50px;height: 50px;" src="${user.headimgurl }">
				</td>
				<td align="center" valign="middle">
					${user.nickname}（${user.sex=='1'?'男':'女' }）
				</td>
				<td align="center" valign="middle">
					${user.country } ${user.province} ${user.city }
				</td>
				<td align="center" valign="middle">
					${user.subscibeTime }
				</td>
				<td align="center" valign="middle">
					<a href="#">修改分组</a>&nbsp;<a href="#">发送消息</a>
				</td>
		   </tr>
		   </s:iterator>
		</table>
		</div>
		<div Style="width:17%;float: left;margin-left: 2%;border:1px #cccccc solid;margin-top: 40px;">
			<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="thetable" style="font-size: 13px;margin-top: 10px;line-height: 25px;">
				<tr>
					<td colspan="4" style="font-weight: bold;color: blue;line-height: 20px;">&nbsp;&nbsp;用户分组</td>
				</tr>
				<tr>
					<td colspan="4" style="width: 100%"><hr/></td>
				</tr>
				<%-- <tr>
					<td width="15%" align="center" valign="middle">
						全部用户（${fn:length(UserList)}）
					</td>
				</tr> --%>
				<s:iterator value="#request.groupList" var="grp" status="statu">
					 
				<tr style="text-align: center;">
					<td onclick="checkData('${grp.id}');">${grp.name}（${grp.count }）</td>
				</tr>
				</s:iterator>
				<tr>
					<td width="15%" align="center" valign="middle">
						<a href="javascript:void(0);" onclick="addGroup()">+创建新分组</a>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>

