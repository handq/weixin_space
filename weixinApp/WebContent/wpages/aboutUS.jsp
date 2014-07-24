<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,,user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://v3.bootcss.com/favicon.ico">
    <title>微官网</title>
    <link href="/bootstrapDemo/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="/bootstrapDemo/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <script src="/bootstrapDemo/js/jquery.js"></script>
 	<script src="/bootstrapDemo/bootstrap/js/bootstrap.min.js"></script>
 	<script src="/bootTest/js/my.js"></script>
    <style type="text/css">
    	.bottom
	{
		position:fixed;
		right:0px;
		_position:absolute;
		/*_right:17px;*/
		bottom:0px;
		background:#f1f1f1;
		color:#fff;
		border-top:1px solid #fff;
		display:block;
		width:100%;
		text-align:center;
	}
	.bottom span
	{
		position:relative;
		display:block;
		top:0;
		left:0;
		padding:1px;
	}
	.li_text{
		float: left;
	}
    </style>
  </head>
  
<body >

	<!-- 这里是头部的轮播插件 start-->
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-inner">
                  <div class="item active">
                      <img src="http://bootstrap.kinghack.com/assets/img/bootstrap-mdo-sfmoma-03.jpg" alt="" />
                      <div class="carousel-caption">
                          <h4>实例1</h4>
                          <p>实例一描述</p>
                      </div>
                  </div>
                  
                  <div class="item">
                      <img src="http://bootstrap.kinghack.com/assets/img/bootstrap-mdo-sfmoma-01.jpg" alt=""/>
                      <div class="carousel-caption">
                          <h4>实例2</h4>
                          <p>实例二描述</p>
                      </div>
                  </div>
                  
                  <div class="item">
                      <img src="http://bootstrap.kinghack.com/assets/img/bootstrap-mdo-sfmoma-03.jpg" alt=""/>
                      <div class="carousel-caption">
                          <h4>实例3</h4>
                          <p>实例三描述</p>
                      </div>
                  </div>
              </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
	<!-- 这里是头部的轮播插件 end-->
<div class="container" style="padding: 5px;">	
	<a href="#"><img src="/images/64png/8.png" class="img-circle" style="margin-left: 5px;" >  </a>
	<a href="#"><img src="/images/64png/315.png" class="img-circle" style="margin-left: 5px;">  </a>
	<a href="#"><img src="/images/64png/461.png" class="img-circle" style="margin-left: 5px;"> </a> 
	<a href="#"><img src="/images/64png/594.png" class="img-circle" style="margin-left: 5px;">  </a>
	
	 <div class="row-fluid" >
		 <div class="span2" style="padding: 5px;" >
		   <!--   <blockquote class="pull-left" style="margin: 0px;padding: 0px;">
			  <p>公司新闻</p>
			  <small style="font-size: 13px;"><a>7月21日，公司举办十周年庆活动，全体员工</a></normal>
			  <small style="font-size: 13px;"><a>7月21日，公司举办十周年庆活动，全体员工</a></small>
			  <small style="font-size: 13px;"><a>7月21日，公司举办十周年庆活动，全体员工</a></small>
			  <small style="font-size: 13px;"><a>7月21日，公司举办十周年庆活动，全体员工</a></small>
			</blockquote> -->
			<h4  style="color: black;border-bottom: 1px black solid;">公告</h4>
			<small style="font-size: 13px;">经公司领导班子研究决定，新进公司的员工，一年转正定级后，公司给统一办理缴纳社保。现在由员工自己缴纳社保，缴费收据上交到公司人事部门。为保证员工的合法权益，公司将以现金的形式给予补偿，每月每人补人民币180元，体现在个人的工资里。此规定从2010年6月1日起执行。</small>
			<h4 style="color: black;border-bottom: 1px black solid;">公司新闻</h4>
			
			<table class="table table-hover">
			 	<tr onclick="location.href='/bootTest/008.html'">
			 		<td>1</td>
			 		<td>7月21日，公司举办十周年庆活动，全体</td>
			 	</tr>
			 	<tr onclick="location.href='/bootTest/008.html'">
			 		<td>2</td>
			 		<td>7月21日，公司举办十周年庆活动，全体</td>
			 	</tr>
			 	<tr onclick="location.href='/bootTest/008.html'">
			 		<td>3</td>
			 		<td>7月21日，公司举办十周年庆活动，全体</td>
			 	</tr>
			  </table>
			 <h4 style="color: black;border-bottom: 1px black solid;">联系我们</h4>
			 <div>
			 <p>名称：北京实创餐饮管理有限公司</p>
			 <p>联系电话：010-391341</p>
			 <p>邮箱：hx-jfkl@hx.mail.com</p>
			 <p>地址：北京市西直门内大街118号</p>
			
			 </div>
	     	 <h4 style="color: black;border-bottom: 1px black solid;"> 版权信息</h4>
	     	 <p class="text-center">版权所有 2004-2007,-SHOP 因特网信息服务业务经营许可证号：京ICP证01023944号</p>
	    </div>
	    <div class="span10" >
	      <!-- <h4>关于我们</h4>
	      <h4>版权信息</h4> -->
	    </div>
	</div>
	<div style="height: 30px;"></div>
	<!-- 这里是固定在底部的导航条 start-->
	
     <div class="bottom" style="background-color: black;">
		<span class="style4" style="color: red;height: 24px;padding-top: 5px;">
		<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/002.html'">在线预约</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/005.html'">查看预约</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/004.html'">关于我们</button>
		</span><br />
	</div>
	<!-- 这里是固定在底部的导航条 end-->
</div>
</body>
</html>