using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicroZone
{
    public partial class Moment : System.Web.UI.Page
    {
        Supports date = new Supports();
        public string username;
        public string imageurl;
        public string emial;
        public string nickname;
        public List<string> name = new List<string>();
        public List<DateTime> Date = new List<DateTime>();
        public List<string> contents = new List<string>();
        public List<int> id = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Application["u_name"].ToString();
            //username = "xiaobian"; //just for quick test
            int getinfo = date.getInformation(username, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image1.ImageUrl = imageurl;
                Label_name.Text = username;
            }
            string time= DateTime.Now.Hour.ToString();
            int T = int.Parse(time);
            if (0 <= T && T <= 12)
                Label_time.Text = "Morning";
            else
                Label_time.Text = "Afternoon";
            int getC = date.getContents(username, out name, out Date, out contents, out id);
            if(getC==0)
            {
                load_1();
                load_2();
                load_3();
            }
        }
        public void load_1()
        {
            string E, N, Image;
            if(name.Count>0)
            {
                int getinfo = date.getInformation(name[0], out E, out N, out Image);
                if(getinfo==0)
                {
                    Image2.Visible = true;
                    Label_nam1.Visible = true;
                    Label_moments1.Visible = true;
                    Label_t1.Visible = true;
                    Label_time1.Visible = true;
                    Label_nam1.Text = name[0];
                    Label_moments1.Text = contents[0];
                    Label_t1.Text = Date[0].ToString();
                    Image2.ImageUrl = Image;
                }
            }
        }
        public void load_2()
        {
            string E, N, Image;
            if (name.Count -1> 0)
            {
                int getinfo = date.getInformation(name[name.Count - 2], out E, out N, out Image);
                if (getinfo == 0)
                {

                    Image3.Visible = true;
                    Label_nam2.Visible = true;
                    Label_moments2.Visible = true;
                    Label_t2.Visible = true;
                    Label_time2.Visible = true;
                    Label_nam2.Text = name[name.Count - 2];
                    Label_moments2.Text = contents[name.Count - 2];
                    Label_t2.Text = Date[name.Count - 2].ToString();
                    Image3.ImageUrl = Image;
                }
            }
        }
        public void load_3()
        {
            string E, N, Image;
            if (name.Count - 2 > 0)
            {
                int getinfo = date.getInformation(name[name.Count - 3], out E, out N, out Image);
                if (getinfo == 0)
                {
                    Image4.Visible = true;
                    Label_nam3.Visible = true;
                    Label_moments3.Visible = true;
                    Label_t3.Visible = true;
                    Label_time3.Visible = true;
                    Label_nam3.Text = name[name.Count - 3];
                    Label_moments3.Text = contents[name.Count - 3];
                    Label_t3.Text = Date[name.Count - 3].ToString();
                    Image4.ImageUrl = Image;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string moments = TextBox1.Text;
            if(moments=="")
                Response.Write("<script>alert('没啥可发的，先写点吧!')</script>");
            else
            {
                int pubmoments = date.pubContents(username, moments);
                if(pubmoments==0)
                {
                    int getC = date.getContents(username, out name, out Date, out contents, out id);
                    if (getC == 0)
                    {
                        load_1();
                        load_2();
                        load_3();
                    }
                }
                else
                    Response.Write("<script>alert('系统错误，发送失败!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("personPage.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Friend.aspx");
        }
    }
}