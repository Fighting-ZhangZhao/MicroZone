﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MicroZone.Register" %>

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
    body{background:url(images/bg2.jpg);
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
			<div class="page-header">
				<h1>
					Register for new User!</h1>
                <h1>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ——welcome to the Microzone!</h1>
			</div>
		</div>
	</div>
</div>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Check"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="confirm" Font-Names="Aharoni" Height="50px" Width="120px" class="a_demo_one"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </form>
</body>
</html>