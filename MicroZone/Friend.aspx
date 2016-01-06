﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Friend.aspx.cs" Inherits="MicroZone.Friend" %>

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
					Weclome to the Microzone!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
				</h1>
			</div>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-6 column">
			<div class="page-header">
				<h1>
					Information Search
				</h1>
			</div> &nbsp; <span class="label label-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            </span>&nbsp;<br />
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Username / Email"></asp:Label>
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="227px"></asp:TextBox>
            <br />
&nbsp;<asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Nickname"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="227px"></asp:TextBox>
		    <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button8" runat="server" Font-Size="X-Large" Text="Search" Width="135px" />
		</div>
		<div class="col-md-6 column">
			<div class="page-header">
				<h1>
					Someone you might know....</h1>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />
				</div>
				<div class="col-md-8 column">
				    <asp:Label ID="Label_n1" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_name1" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
                    <br />
                    <asp:Label ID="Label_e1" runat="server" Font-Size="X-Large" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_email1" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_sent1" runat="server" Font-Size="Large" Text="Sent invitation" Width="122px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label_nn1" runat="server" Font-Size="X-Large" Text="Nickname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_nick1" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				    <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />
				</div>
				<div class="col-md-8 column">
				    <asp:Label ID="Label_n2" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_name2" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
                    <br />
                    <asp:Label ID="Label_e2" runat="server" Font-Size="X-Large" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_email2" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_sent2" runat="server" Font-Size="Large" Height="33px" Text="Sent invitation" Width="122px" />
                    <br />
                    <asp:Label ID="Label_nn2" runat="server" Font-Size="X-Large" Text="Nickname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_nick2" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				    <asp:Image ID="Image4" runat="server" Height="100px" Width="100px" />
				</div>
				<div class="col-md-8 column">
				    <asp:Label ID="Label_n3" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_name3" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
                    <br />
                    <asp:Label ID="Label_e3" runat="server" Font-Size="X-Large" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_email3" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_sent3" runat="server" Font-Size="Large" Height="33px" Text="Sent invitation" Width="122px" />
                    <br />
                    <asp:Label ID="Label_nn3" runat="server" Font-Size="X-Large" Text="Nickname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_nick3" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-4 column">
				    <asp:Image ID="Image5" runat="server" Height="100px" Width="100px" />
				</div>
				<div class="col-md-8 column">
				    <asp:Label ID="Label_n4" runat="server" Font-Size="X-Large" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_name4" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
                    <br />
                    <asp:Label ID="Label_e4" runat="server" Font-Size="X-Large" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_email4" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_sent4" runat="server" Font-Size="Large" Height="33px" Text="Sent invitation" Width="122px" />
                    <br />
                    <asp:Label ID="Label_nn4" runat="server" Font-Size="X-Large" Text="Nickname"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label_nick4" runat="server" Font-Size="Large" ForeColor="#333333"></asp:Label>
				</div>
			</div>
            <div class="row clearfix">
				<div class="col-md-12 column">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Text=" up " Width="49px" />
&nbsp;<asp:Button ID="Button1" runat="server" Text="1" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="2" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="3" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="4" />
&nbsp;<asp:Button ID="Button5" runat="server" Text="5" />
&nbsp;<asp:Button ID="Button6" runat="server" Text="down" />
				</div>
			</div>
		</div>
	</div>
</div>

    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>