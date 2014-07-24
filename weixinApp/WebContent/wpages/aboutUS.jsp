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
    <title>关于我们</title>
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
	<div class="container" style="margin: 5px; padding: 5px;" >
		<div class="panel panel-default">
		  <div class="panel-heading">关于我们</div>
		  <div class="panel-body">
		  <img src="http://user.china-dirs.cn/k029/user051/uploadfile/20100728141457771.jpg" class="img-rounded" width="100%" style="margin-bottom: 15px;">
		  <p>
			<label>名称：</label>${company.CName}
		  </p>
		 
		  <p>
			<label>简介：</label>${company.CInfomation}
		  </p>
		  
		   
		  <p>
			<label>网址：</label>${company.CLink}
		  </p>
		  
		  <p>
			<label>邮箱：</label>${company.CEmail}
		  </p>
		  
		  <p>
			<label>地址：</label>${company.CAddress}
		  </p>
		  
		  <p>
			<label>乘车路线：</label>${company.CBusline}
		  </p>
		  </div>
		  </div>
		</div>
	<p class="text-center" style="margin-top: 10px;">技术支持：北京环球科技</p>
	</div>
		<div style="height: 30px;"></div>
	<!-- 这里是固定在底部的导航条 start-->
     <div class="bottom" style="background-color: black;">
		<span class="style4" style="color: red;height: 24px;padding-top: 5px;">
		<button type="button" class="btn btn-default" style="width: 30%"  style="width: 30%" onclick="location.href='/bootTest/003.html'">微官网</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/002.html'">在线预约</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/005.html'">查看预约</button>
		</span><br />
	</div>
	<!-- 这里是固定在底部的导航条 end-->
</body>
</html>
