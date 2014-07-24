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
    <title>在线预约</title>
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
        <div class="panel-heading">
          <h3 class="panel-title">订单说明</h3>
        </div>
        <div class="panel-body" style="line-height: 18px;">
         	通过填写下面的在线订单，即可生产想应的预约订单。
        </div>
      </div>
      
     <div class="row" style="margin: 0px;">
        <div class="col-sm-4" style="width: 100%;padding: 0px;">
          <div class="list-group" >
            <li  class="list-group-item"> <img alt="" src="/images/png/819.png"><a>010-826491</a>
			</li>
            <a href="/bootTest/004.html" class="list-group-item"><img alt="" src="/images/png/564.png">北京市东燕郊经济开发区斯普兰路南600米燕郊神态度假酒店
            	<dl class="pull-right">
				  <dt ><img alt="" src="/images/png/993.png"></dt>
				</dl> 
            </a>
          </div>
        </div>
        <div class="col-sm-4" style="width: 100%;padding: 0px;">
          <div class="list-group">
            <a href="/bootTest/005.html"  class="list-group-item"><img alt="" src="/images/png/867.png">&nbsp; 我的在线预约  
            	<dl class="pull-right">
				  <dt ><span class="badge" style="background-color: red;">2</span><img alt="" src="/images/png/993.png"></dt>
				</dl>
             </a>
          </div>
        </div>
      </div>
      
      <div class="panel panel-default">
	   <div class="panel-heading">
          <h3 class="panel-title">请认真填写在线订单</h3>
        </div>
	  <table class="table">
	 	 <tr style="background-color: white;border: 0">
				<td >联系人</td>		
				<td ><input type="text" class="form-control" id="inputName" placeholder="请填写名字"></td>		
			</tr>
			<tr style="background-color: white;border: 0">
				<td >联系电话</td>		
				<td ><input type="number" class="form-control" id="inputPhone" placeholder="请填写电话"></td>		
			</tr>
			<tr style="background-color: white;border: 0">
				<td >预达日期</td>		
				<td ><input type="date" class="form-control" id="inputFromDate" placeholder="请选择日期"></td>		
			</tr>
			<tr style="background-color: white;border: 0">
				<td >预离日期</td>		
				<td ><input type="date" class="form-control" id="inputTodate" placeholder="请选择日期"></td>		
			</tr>
			<tr style="background-color: white;border: 0">
				<td >入住人数</td>		
				<td ><input type="number" class="form-control" id="inputNumber" placeholder="请填写入住人数"></td>		
			</tr>
			<tr style="background-color: white;border: 0">
				<td >房间类型</td>		
				<td ><input type="text" class="form-control" id="inputType" placeholder="标间、大床房"></td>		
			</tr>
			<tr style="background-color: white;border: 0">
				<td >备注</td>		
				<td ><textarea rows="2" cols="2" class="form-control" id="inputRemark" placeholder="备注信息"></textarea> </td>		
			</tr>
	  </table>
	</div>
      
		<button type="button" class="btn btn-primary" style="width: 100%">提交</button>
		<p class="text-center" style="margin-top: 10px;">技术支持：北京环球科技</p>
		 
     <div class="bottom" style="background-color: black;">
		<span class="style4" style="color: red;height: 15px;padding-top: 5px;">
		<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/003.html'">微官网</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/005.html'">查看预约</button>
	  	<button type="button" class="btn btn-default" style="width: 30%" onclick="location.href='/bootTest/004.html'">关于我们</button>
		</span><br />
	</div>
</div>
</body>
</html>