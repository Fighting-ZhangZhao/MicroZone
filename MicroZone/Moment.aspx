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
							<asp:Button ID="Button2" runat="server" Font-Size="Large" Height="31px" OnClick="Button2_Click" Text="Personal" Width="134px" />
&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Font-Size="Large" Height="31px" Text="Moment" Width="134px" />
&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" Font-Size="Large" Height="31px" OnClick="Button4_Click" Text="Friend" Width="134px" />
                        </h1>
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
		</div>
		<div class="col-md-8 column">
			<div class="row clearfix">
				<div class="col-md-12 column">
				    <asp:TextBox ID="TextBox1" runat="server" Height="62px" Width="453px">speak somthing......</asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Font-Size="Large" Height="62px" OnClick="Button1_Click" Text="publish" />
				    <br />
                    <br />
				</div>
                <div class="row clearfix">
		<div class="col-md-4 column">
		&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="100px" Visible="False" Width="100px" />
		</div>
		<div class="col-md-8 column">
		    <asp:Label ID="Label_nam1" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
            <br />
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
		&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" Height="100px" Visible="False" Width="100px" />
		</div>
		<div class="col-md-8 column">
		    <asp:Label ID="Label_nam2" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label_moments2" runat="server" Font-Size="Large" Visible="False"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_time2" runat="server" Text="Time : " Visible="False"></asp:Label>
            <asp:Label ID="Label_t2" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
		</div>
	</div>
                <div class="row clearfix">
		<div class="col-md-4 column">
		&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" Height="100px" Visible="False" Width="100px" />
		</div>
		<div class="col-md-8 column">
		    <asp:Label ID="Label_nam3" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label_moments3" runat="server" Font-Size="Large" Visible="False"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label_time3" runat="server" Text="Time : " Visible="False"></asp:Label>
            <asp:Label ID="Label_t3" runat="server" ForeColor="#666666" Visible="False"></asp:Label>
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
