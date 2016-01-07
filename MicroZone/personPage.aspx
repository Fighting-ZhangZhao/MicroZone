<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personPage.aspx.cs" Inherits="MicroZone.personPage" %>

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
        body{background:url(images/bg.jpg);
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
					<asp:Button ID="Button2" runat="server" Font-Size="Large" Height="50px" Text="Personal" Width="120px" CssClass=" a_demo_one"/>
&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Font-Size="Large" Height="50px" OnClick="Button3_Click" Text="Moment" Width="120px" CssClass=" a_demo_one"/>
&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Font-Size="Large" Height="50px" OnClick="Button4_Click" Text="Friend" Width="120px" CssClass=" a_demo_one"/>
                <h1>
					<asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/1.jpg" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp; <p><span style="color:white;">Personal Microzone</span></p>
				</h1>
                <h1>
					&nbsp;<asp:Label ID="Label_name" runat="server" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color:white;">——easy zone , easy life.</span></h1>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-4 column">
			 <span class="label label-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<div class="page-header">
				<h1>
					<span style="color:white;">修改头像</span>&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="change" class="a_demo_one"/>
				</h1>
                 <p>
					&nbsp;<asp:RadioButton runat="server" ID="RadioButton_p1" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p1_CheckedChanged" />
                     <asp:Image ID="Image2" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/1.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;
                     <asp:RadioButton ID="RadioButton_p2" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p2_CheckedChanged" />
                     <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/2.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;</p>
                 <p>
					&nbsp;<asp:RadioButton ID="RadioButton_p3" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p3_CheckedChanged" />
                     <asp:Image ID="Image4" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/3.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;<asp:RadioButton ID="RadioButton_p4" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p4_CheckedChanged" />
                     <asp:Image ID="Image5" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/4.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;</p>
                 <p>
					&nbsp;<asp:RadioButton ID="RadioButton_p5" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p5_CheckedChanged" />
                     <asp:Image ID="Image6" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/5.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;
                     <asp:RadioButton ID="RadioButton_p6" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p6_CheckedChanged" />
                     <asp:Image ID="Image7" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/6.jpg" Visible="False" Width="100px" />
				</p>
                 <p>
					 <asp:RadioButton ID="RadioButton_p7" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p7_CheckedChanged" />
					 <asp:Image ID="Image8" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/7.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;
                     <asp:RadioButton ID="RadioButton_p8" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p8_CheckedChanged" />
                     <asp:Image ID="Image9" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/8.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;
                     </p>
                 <p>
                     <asp:RadioButton ID="RadioButton_p9" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p9_CheckedChanged" />
                     <asp:Image ID="Image10" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/9.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;<asp:RadioButton ID="RadioButton_p10" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p10_CheckedChanged" />
                     <asp:Image ID="Image11" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/10.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;
                     </p>
                 <p>
                     <asp:RadioButton ID="RadioButton_p11" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p11_CheckedChanged" />
                     <asp:Image ID="Image12" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/11.jpg" Visible="False" Width="100px" />
&nbsp;&nbsp;
                     <asp:RadioButton ID="RadioButton_p12" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="RadioButton_p12_CheckedChanged" />
                     <asp:Image ID="Image13" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/12.jpg" Visible="False" Width="100px" />
				</p>
                 <p>
					 <asp:Button ID="Button_avatar" runat="server" Text="Modify" Visible="False" OnClick="Button_avatar_Click" class="a_demo_one"/>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					 &nbsp;</p>
			</div>
		</div>
		<div class="col-md-4 column">
			 <span class="label label-info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<div class="page-header">
				<h1>
					<span style="color:white;">修改昵称</span>&nbsp;&nbsp; <asp:Button ID="Button_nick_change" runat="server" OnClick="Button_nick_change_Click" Text="change" class="a_demo_one"/>
				</h1>
                 <p>
					 <asp:Label ID="Label_nick" runat="server" Font-Size="Large" Text="New Nickname" Visible="False" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_nick" runat="server" Visible="False" Width="216px"></asp:TextBox>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button_nick" runat="server" Text="Modify" Visible="False" OnClick="Button_nick_Click" class="a_demo_one"/>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					 &nbsp;</p>
                 <p>
					 &nbsp;</p>
                 <p>
					 &nbsp;</p>
			</div>
		</div>
		<div class="col-md-4 column">
			 <span class="label label-danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<div class="page-header">
				<h1>
					<span style="color:white;">账号信息</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_AI_change" runat="server" OnClick="Button_AI_change_Click" Text="change" class="a_demo_one"/>
				</h1>
                 <p>
					 <asp:Label ID="Label_AI_1" runat="server" Font-Size="Large" Text="Original password" Visible="False" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_AI_1" runat="server" Visible="False" Width="194px"></asp:TextBox>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					 <asp:Label ID="Label_AI_2" runat="server" Font-Size="Large" Text="Change Password" Visible="False" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_AI_2" runat="server" Visible="False" Width="193px"></asp:TextBox>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					&nbsp;<asp:Label ID="Label_AI_3" runat="server" Font-Size="Large" Text="Check" Visible="False" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_AI_3" runat="server" Visible="False" Width="192px"></asp:TextBox>
&nbsp;&nbsp;
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button_AI" runat="server" Text="Modify" Visible="False" OnClick="Button_AI_Click" class="a_demo_one"/>
				</p>
			</div>
		</div>
	</div>
</div>
    </div>
    </form>
</body>
</html>
