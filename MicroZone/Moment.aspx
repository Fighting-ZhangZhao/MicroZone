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
							Moment <small>——give us your feelings!</small></h1>
					</div>
				</div>
			</div>
			<blockquote>
				<p style="font-family: David; font-size: x-large">
					<asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                    Good
                    <asp:Label ID="Label_time" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label_name" runat="server"></asp:Label>
                    , share your feeling and comments to this wonderful world.</p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ————Easy zone , easy life!
			</blockquote>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-4 column">
			<div class="page-header">
				<h1>
					BIG NEWS <small>——what&#39;s happening right now</small></h1>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
				</div>
			</div>
			<div class="row clearfix">
				<div class="col-md-12 column">
				</div>
			</div>
		</div>
		<div class="col-md-8 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
				    <asp:TextBox ID="TextBox1" runat="server" Height="62px" Width="453px">speak somthing......</asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Font-Size="Large" Height="62px" OnClick="Button1_Click" Text="publish" />
				</div>
			</div>
		</div>
	</div>
</div>

    </div>
    </form>
</body>
</html>
