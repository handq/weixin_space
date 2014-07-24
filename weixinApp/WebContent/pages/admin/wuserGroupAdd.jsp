<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://www.hx.com/tags" prefix="hx" %>

<%   String path = request.getContextPath();   
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<html>
<title>无标题文档</title>
<hx:ajax jquery="true"/>

<script type="text/javascript">
	function toSubmit(){
	var murl = "<%=basePath%>user/addWuserGroup.action";
	var parmers = $("#userGrpoupAddFrm").serialize();
	$.post(murl,parmers,function(boo){
		top.document.getElementById("mainFrame").src="<%=basePath%>user/getWuserList.action";
		window.close();
	});
	
	}
</script>
<style type="text/css">
body{
	background-color: white;
}
form input{
	border:0px;
}

</style>
<head>
<body >
		<div style="font-size: 14px;font-weight: bold;margin-top: 10px;" align="center">用户分组增加</div>
		
		<form method="post" name=""userGrpoupAddFrm"" id="userGrpoupAddFrm" action=""> 
		<table width="100%" border="0"  cellpadding="0" cellspacing="0"
			 style="font-size: 13px;text-align: center;margin-left: 0px;" >
			<tr onMouseOut="this.style.background='#eeeeee'"
					onMouseOver="this.style.background='#F4E088'" bgcolor="#eeeeee" style="height: 35px;">
				<td valign="middle"  width="40%" >
					分组名称
				</td>
				<td align="center" valign="middle" colspan="3" width="50%">
					<s:textfield name="group.group.name"  value="" required="true" style="width: 100%" requiredposition="left" />
				</td>
			</tr>
		</table>
		<div align="center" style="margin-top: 10px;">
			<button name="submitForm" style="width: 50px;border: 0px;" value="增加" onclick="toSubmit();">增加</button> 
			<s:reset name="resetForm"  style="width: 50px;" value="重置"></s:reset>
		</div>
		</form>
	</body>
</html>

