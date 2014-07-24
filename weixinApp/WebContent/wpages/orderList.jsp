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
    <title>预约查看</title>
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
  
<body>
<img src="/images/20111007102713.jpg" alt="..." width="100%"  style="height: 150px">
<div class="jumbotron" style="padding: 8px;font-size: 14px"> 
      <div class="panel panel-default"  >
        <div class="panel-body" style="line-height: 18px;">
         	您目前一共有2个预约订单。
        </div>
      </div>
      <div class="panel panel-default">
	   	<div class="panel-heading">
          <h3 class="panel-title">订单1</h3>
        </div>
	  	<table class="table table-bordered" style="font-size: 12px;">
		 	 <tr style="background-color: white;border: 0">
				<td >联系人</td>		
				<td >李晓明</td>		
				<td >联系电话</td>		
				<td >13989031234</td>		
			 </tr>
		 	 <tr style="background-color: white;border: 0">
				<td >预达日期</td>		
				<td >2014-07-20</td>		
				<td >预离日期</td>		
				<td >2014-07-23</td>		
			 </tr>
		 	 <tr style="background-color: white;border: 0">
				<td >入住人数</td>		
				<td >2人</td>		
				<td >房间类型</td>		
				<td >大床房</td>		
			 </tr>
		 	 <tr style="background-color: white;border: 0">
				<td >备注信息</td>		
				<td colspan="3">暂无备注</td>		
			 </tr>
				
		  </table>
		</div>
      <div class="panel panel-default">
	   	<div class="panel-heading">
          <h3 class="panel-title">订单2</h3>
        </div>
	  	<table class="table table-bordered" style="font-size: 12px;">
		 	 <tr style="background-color: white;border: 0">
				<td >联系人</td>		
				<td >李晓明</td>		
				<td >联系电话</td>		
				<td >13989031234</td>		
			 </tr>
		 	 <tr style="background-color: white;border: 0">
				<td >预达日期</td>		
				<td >2014-07-20</td>		
				<td >预离日期</td>		
				<td >2014-07-23</td>		
			 </tr>
		 	 <tr style="background-color: white;border: 0">
				<td >入住人数</td>		
				<td >2人</td>		
				<td >房间类型</td>		
				<td >大床房</td>		
			 </tr>
		 	 <tr style="background-color: white;border: 0">
				<td >备注信息</td>		
				<td colspan="3">暂无备注</td>		
			 </tr>
				
		  </table>
		</div>
      
		<p class="text-center" style="margin-top: 10px;">技术支持：北京环球科技</p>
		 
     <div class="bottom" style="background-color: black;">
		<span class="style4" style="color: red;height: 15px;padding-top: 5px;">
		<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/003.html'">微官网</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/002.html'">在线预约</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/004.html'">关于我们</button>
		</span><br />
	</div>
</div>
</body>
</html>