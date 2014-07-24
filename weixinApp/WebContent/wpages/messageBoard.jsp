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
    <title>留言板</title>
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
<img src="/images/message_boards.jpg" alt="..." width="100%"  style="height: 90px">
<img src="/images/edit_message.jpg" alt="..." width="100%"  style="height: 70px">
<div class="jumbotron" style="padding: 0px;font-size: 14px;margin: 0px;"> 
		<div>
			<div style="color: green;background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;">填写留言</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');">
				<div style="margin-left: 40px;margin-right: 20px;">
					<textarea rows="2" cols="1" class="form-control" id="inputRemark" placeholder="请输入留言" style="margin-bottom: 10px;"></textarea> 
					<button type="button" class="btn btn-success" style="width: 100%">提交</button>
				</div>
			</div>
		</div>
		<div >
			<div style="color: green;background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;"> 地平线</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 40px;">这个地方还真可以。。<br/><small style="color: gray;">2014.07.12</small><a style="color: green;font-size: 12px;">回复</a></label>
				<label style="margin-left: 40px;">
					<blockquote class="pull-left" style="padding: 0px;margin: 0px;">
					  <small style="line-height:15px;">2014.07.12  handq回复地平线:</small>
					 <p style="color:black;font-size: 12px;line-height: 18px;">确实还不错！大赞！<a style="color: green;font-size: 12px;">回复</a></p>
					</blockquote>
					<blockquote class="pull-left" style="padding: 0px;margin: 0px;">
					  <small style="line-height:15px;">2014.07.13  地平线回复handq:</small>
					 <p style="color:black;font-size: 12px;line-height: 18px;">呵呵，是滴~<a style="color: green;font-size: 12px;">回复</a></p>
					</blockquote>
				</label>
			</div>
		</div>
		<div >
			<div style="color: green;background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;">handq</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;">
				<label style="margin-left: 40px;">这个地方还真可以。。<br/><small style="color: gray;">2014.07.12</small><a style="color: green;font-size: 12px;">回复</a></label>
			</div>
		</div>
		<div>
			<div style="color: green;background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;"> 地平线</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 40px;">这个地方还真可以。。<br/><small style="color: gray;">2014.07.12</small><a style="color: green;font-size: 12px;">回复</a></label>
			</div>
		</div>
		<div >
			<div style="color: green;background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;">handq</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;">
				<label style="margin-left: 40px;">这个地方还真可以。。<br/><small style="color: gray;">2014.07.12</small><a style="color: green;font-size: 12px;">回复</a></label>
			</div>
		</div>
		<div>
			<div style="color: green;background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;"> 地平线</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');">
				<label style="margin-left: 40px;">这个地方还真可以。。<br/><small style="color: gray;">2014.07.12</small><a style="color: green;font-size: 12px;">回复</a></label>
			</div>
		</div>
		<div >
			<div style="color: green;background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;">
				<label style="margin-left: 21px;color: green;">●</label><label style="margin-left: 12px;">handq</label>
			</div>
			<div style="background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;">
				<label style="margin-left: 40px;">这个地方还真可以。。<br/><small style="color: gray;">2014.07.12</small><a style="color: green;font-size: 12px;">回复</a></label>
			</div>
		</div>
		<div >
			<div style="background-image: url('/images/bak_message.jpg');background-repeat: repeat-y;text-align: center;">
				<small style="color: gray;">点击加载更多...</small>
			</div>
		</div>
		<p class="text-center" style="margin-top: 10px;">技术支持：北京环球科技</p>
</div>
</body>
</html>