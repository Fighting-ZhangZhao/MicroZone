<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Moment.aspx.cs" Inherits="MicroZone.Moment" %>

<!DOCTYPE html>
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    body{background:url(images/bg7.jpg);
             background-attachment:fixed
        }
    .a_demo_one {
	background-color:#3bb3e0;
	padding:10px;
	position:relative;
	font-family: 'Open Sans', sans-serif;
	font-size:20px;
    width:90px;
	height:50px;
	text-decoration:none;
	color:#fff;
	border: solid 1px #186f8f;
	background-image: linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -o-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -moz-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -webkit-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -ms-linear-gradient(bottom, rgb(44,160,202) 0%, rgb(62,184,229) 100%);
	background-image: -webkit-gradient(
	linear,
	left bottom,
	left top,
	color-stop(0, rgb(44,160,202)),
	color-stop(1, rgb(62,184,229))
	);
	-webkit-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px rgba(0, 0, 0, 0.00);
	-moz-box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px rgba(0, 0, 0, 0.00);
	box-shadow: inset 0px 1px 0px #7fd2f1, 0px 1px 0px rgba(0, 0, 0, 0.00);
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
}

.a_demo_one::before {
	background-color:#ccd0d5;
	content:"";
	display:block;
	position:absolute;
	
	padding:8px;
	left:-8px;
	top:-8px;
	z-index:-1;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	-o-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.00), 0px 1px 0px #fff;
	-moz-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.00), 0px 1px 0px #fff;
	-o-box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.00), 0px 1px 0px #fff;
	box-shadow: inset 0px 1px 1px rgba(0, 0, 0, 0.00), 0px 1px 0px #fff;
}

.a_demo_one:active {
	padding-bottom:9px;
	padding-left:10px;
	padding-right:10px;
	padding-top:11px;
	top:1px;
	background-image: linear-gradient(bottom, rgb(62,184,229) 0%, rgb(44,160,202) 100%);
	background-image: -o-linear-gradient(bottom, rgb(62,184,229) 0%, rgb(44,160,202) 100%);
	background-image: -moz-linear-gradient(bottom, rgb(62,184,229) 0%, rgb(44,160,202) 100%);
	background-image: -webkit-linear-gradient(bottom, rgb(62,184,229) 0%, rgb(44,160,202) 100%);
	background-image: -ms-linear-gradient(bottom, rgb(62,184,229) 0%, rgb(44,160,202) 100%);
	background-image: -webkit-gradient(
	linear,
	left bottom,
	left top,
	color-stop(0, rgb(62,184,229)),
	color-stop(1, rgb(44,160,202))
	);
}       
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<div class="page-header">
						<h1>
					<asp:Button ID="Button11" runat="server" Font-Size="Large" Height="50px" OnClick="Button11_Click" Text="Personal" Width="120px" CssClass=" a_demo_one"/>
&nbsp;&nbsp;
                    <asp:Button ID="Button12" runat="server" Font-Size="Large" Height="50px" OnClick="Button12_Click" Text="Moment" Width="120px" CssClass=" a_demo_one"/>
&nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" Font-Size="Large" Height="50px" Text="Friend" Width="120px" OnClick="Button13_Click" CssClass=" a_demo_one"/>
				        </h1>
                        <h1>
							<span style="color:white;">Moment </span><small><span style="color:white;">——give us your feelings!</span></small></h1>
					</div>
				</div>
			</div>
			<blockquote>
				<p style="font-family: David; font-size: x-large">
					<asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                    <span style="color:white;">Good</span>
                    <asp:Label ID="Label_time" runat="server" ForeColor="White"></asp:Label>
&nbsp;<asp:Label ID="Label_name" runat="server" ForeColor="White"></asp:Label>
                    <span style="color:white;">, share your feeling and comments to this wonderful world.</span></p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:white;">————Easy zone , easy life!</span>
			</blockquote>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-4 column">
			<div class="page-header">
				<h1>
					<span style="color:white;">BIG NEWS</span> <small><span style="color:white;">——what&#39;s happening right now</span></small></h1>
			</div>
			<div class="row clearfix">
				<div class="carousel slide" id="carousel-638295">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-638295">
					</li>
					<li data-slide-to="1" data-target="#carousel-638295">
					</li>
					<li data-slide-to="2" data-target="#carousel-638295">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="http://n.sinaimg.cn/sports/20151227/yrRL-fxmxxsp7086252.jpg" />
						<div class="carousel-caption">
							<h4>
								Big NBA News
							</h4>
							<p>
								NBA All-star vote has been started , up to now , Kobe Bryant gets the most votes.
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="ftp://121.42.32.109/Photo/AJ.jpg" />
						<div class="carousel-caption">
							<h4>
								       
							</h4>
							<p>
								Air Jordan XXX has put on sale!
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="http://img15.3lian.com/2015/f1/108/d/134.jpg" />
						<div class="carousel-caption">
							<h4>
								     
							</h4>
							<p>
								
							</p>
						</div>
					</div>
				</div> <a class="left carousel-control" href="#carousel-638295" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-638295" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
		
		<div class="col-md-8 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
				    <br />
                    <br />
				    <asp:TextBox ID="TextBox1" runat="server" Height="62px" Width="453px">speak somthing......</asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Font-Size="Large" Height="50px" Width="120px" OnClick="Button1_Click" Text="publish" class="a_demo_one"/>
				    <br />
                    <br />
				</div>
                <div class="row clearfix">
		<div class="col-md-4 column">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <asp:Image ID="Image2" runat="server" Height="100px" Visible="False" Width="100px" />
		</div>
		<div class="col-md-8 column">
		    <asp:Label ID="Label_nam1" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
            <br />
            &nbsp;&nbsp;
            <br />
            <asp:Label ID="Label_moments1" runat="server" Font-Size="Large" Visible="False"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_time1" runat="server" Text="Time : " Visible="False"></asp:Label>
            <asp:Label ID="Label_t1" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div>
                <div class="row clearfix">
		<div class="col-md-4 column">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />
		</div>
		<div class="col-md-8 column">
		    <asp:Label ID="Label_nam2" runat="server" ForeColor="#666666"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label_moments2" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_time2" runat="server" Text="Time : "></asp:Label>
            <asp:Label ID="Label_t2" runat="server" ForeColor="#666666"></asp:Label>
		</div>
	</div>
                <div class="row clearfix">
		<div class="col-md-4 column">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <asp:Image ID="Image4" runat="server" Height="100px" Width="100px" />
		</div>
		<div class="col-md-8 column">
		    <asp:Label ID="Label_nam3" runat="server" ForeColor="#666666"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label_moments3" runat="server" Font-Size="Large"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_time3" runat="server" Text="Time : "></asp:Label>
            <asp:Label ID="Label_t3" runat="server" ForeColor="#666666"></asp:Label>
		</div>
	</div>
			</div>
		</div>
	</div>
</div>

    </div>
    </form>
</body>
</html>