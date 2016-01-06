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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="page-header">
				<h1>
					<asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="ftp://121.42.32.109/Photo/1.jpg" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp; Personal Microzone
				</h1>
                <h1>
					&nbsp;<asp:Label ID="Label_name" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ——easy zone , easy life.</h1>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-4 column">
			 <span class="label label-success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;<div class="page-header">
				<h1>
					Modify Avatar&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Size="Large" OnClick="Button1_Click" Text="change" />
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
					 <asp:Button ID="Button_avatar" runat="server" Text="Modify" Visible="False" OnClick="Button_avatar_Click" />
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
					Nickname&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button_nick_change" runat="server" Font-Size="Large" Height="27px" OnClick="Button_nick_change_Click" Text="change" Width="82px" />
				</h1>
                 <p>
					 <asp:Label ID="Label_nick" runat="server" Font-Size="Large" Text="New Nickname" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_nick" runat="server" Visible="False" Width="216px"></asp:TextBox>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button_nick" runat="server" Text="Modify" Visible="False" OnClick="Button_nick_Click" />
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
					Account Information&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_AI_change" runat="server" Font-Size="Large" OnClick="Button_AI_change_Click" Text="change" />
				</h1>
                 <p>
					 <asp:Label ID="Label_AI_1" runat="server" Font-Size="Large" Text="Original password" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_AI_1" runat="server" Visible="False" Width="194px"></asp:TextBox>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					 <asp:Label ID="Label_AI_2" runat="server" Font-Size="Large" Text="Change Password" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_AI_2" runat="server" Visible="False" Width="193px"></asp:TextBox>
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					&nbsp;<asp:Label ID="Label_AI_3" runat="server" Font-Size="Large" Text="Check" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox_AI_3" runat="server" Visible="False" Width="192px"></asp:TextBox>
&nbsp;&nbsp;
				</p>
                 <p>
					 &nbsp;</p>
                 <p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button_AI" runat="server" Text="Modify" Visible="False" OnClick="Button_AI_Click" />
				</p>
			</div>
		</div>
	</div>
</div>
    </div>
    </form>
</body>
</html>
