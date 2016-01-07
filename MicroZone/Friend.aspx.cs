using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicroZone
{
    public partial class Friend : System.Web.UI.Page
    {
        Supports date = new Supports();
        public string name;
        public string imageurl;
        public string emial;
        public string nickname;
        List<string> inviting = new List<string>();//正在邀请
        List<string> invited = new List<string>();//已被邀请
        List<string> friends = new List<string>();//成为朋友
        List<string> search = new List<string>();//搜出来的朋友
        protected void Page_Load(object sender, EventArgs e)
        {
           name = Application["u_name"].ToString();
            int getinfo = date.getInformation(name, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image1.ImageUrl = imageurl;
                Label1.Text = name;
            }
            int getfri = date.getFriends(name, out friends, out inviting, out invited);
            if(getfri==666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                if(invited.Count!=0)
                {
                    Label_nameasked.Visible = true;
                    Label4.Visible = true;
                    Button9.Visible = true;
                    Button10.Visible = true;
                    Label_nameasked.Text = invited[0];
                }
            }
        }
        public void load_1(string Name)
        {
            string emial, nickname, imageurl;
            int getinfo = date.getInformation(Name, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image2.Visible = true;
                Label_n1.Visible = true;
                Label_name1.Visible = true;
                Label_e1.Visible = true;
                Label_email1.Visible = true;
                Label_nn1.Visible = true;
                Label_nick1.Visible = true;
                Button_sent1.Visible = true;
                Image2.ImageUrl = imageurl;
                Label_name1.Text=Name;
                Label_email1.Text = emial;
                Label_nick1.Text = nickname;
                if (friends.Contains(Name))
                    Button_sent1.Enabled = false;              
            }
        }
        public void load_2(string Name)
        {
            string emial, nickname, imageurl;
            int getinfo = date.getInformation(Name, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image3.Visible = true;
                Label_n2.Visible = true;
                Label_name2.Visible = true;
                Label_e2.Visible = true;
                Label_email2.Visible = true;
                Label_nn2.Visible = true;
                Label_nick2.Visible = true;
                Button_sent2.Visible = true;
                Image3.ImageUrl = imageurl;
                Label_name2.Text = Name;
                Label_email2.Text = emial;
                Label_nick2.Text = nickname;
                if (friends.Contains(Name))
                    Button_sent2.Enabled = false;
            }
        }
        public void load_3(string Name)
        {
            string emial, nickname, imageurl;
            int getinfo = date.getInformation(Name, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image4.Visible = true;
                Label_n3.Visible = true;
                Label_name3.Visible = true;
                Label_e3.Visible = true;
                Label_email3.Visible = true;
                Label_nn3.Visible = true;
                Label_nick3.Visible = true;
                Button_sent3.Visible = true;
                Image4.ImageUrl = imageurl;
                Label_name3.Text = Name;
                Label_email3.Text = emial;
                Label_nick3.Text = nickname;
                if (friends.Contains(Name))
                    Button_sent3.Enabled = false;
            }
        }
        public void load_4(string Name)
        {
            string emial, nickname, imageurl;
            int getinfo = date.getInformation(Name, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image5.Visible = true;
                Label_n4.Visible = true;
                Label_name4.Visible = true;
                Label_e4.Visible = true;
                Label_email4.Visible = true;
                Label_nn4.Visible = true;
                Label_nick4.Visible = true;
                Button_sent4.Visible = true;
                Image5.ImageUrl = imageurl;
                Label_name4.Text = Name;
                Label_email4.Text = emial;
                Label_nick4.Text = nickname;
                if (friends.Contains(Name))
                    Button_sent4.Enabled = false;
            }
        }
        public void Unsee()
        {
            Image2.Visible = false;
            Label_n1.Visible = false;
            Label_name1.Visible = false;
            Label_e1.Visible = false;
            Label_email1.Visible = false;
            Label_nn1.Visible = false;
            Label_nick1.Visible = false;
            Button_sent1.Visible = false;
            Image3.Visible = false;
            Label_n2.Visible = false;
            Label_name2.Visible = false;
            Label_e2.Visible = false;
            Label_email2.Visible = false;
            Label_nn2.Visible = false;
            Label_nick2.Visible = false;
            Button_sent2.Visible = false;
            Image4.Visible = false;
            Label_n3.Visible = false;
            Label_name3.Visible = false;
            Label_e3.Visible = false;
            Label_email3.Visible = false;
            Label_nn3.Visible = false;
            Label_nick3.Visible = false;
            Button_sent3.Visible = false;
            Image5.Visible = false;
            Label_n4.Visible = false;
            Label_name4.Visible = false;
            Label_e4.Visible = false;
            Label_email4.Visible = false;
            Label_nn4.Visible = false;
            Label_nick4.Visible = false;
            Button_sent4.Visible = false;
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            friends.Add(invited[0]);
            int inv = date.invitations(invited[0], name);
            if (inv == 0)
            {
                Response.Write("<script>alert('" + invited[0] + "已经成为你的朋友!')</script>");
                invited.RemoveAt(0);
            }
            else
            {
                Response.Write("<script>alert('发送信息失败!')</script>");
            }
            Label_nameasked.Visible = false;
            Label4.Visible = false;
            Button9.Visible = false;
            Button10.Visible = false;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            int refu= date.refuse(invited[0], name);
            if (refu == 0)
            {
                Response.Write("<script>alert('你已经拒绝了" + invited[0] + "的邀请!')</script>");
                invited.RemoveAt(0);
                Label_nameasked.Visible = false;
                Label4.Visible = false;
                Button9.Visible = false;
                Button10.Visible = false;
            }
            else
                Response.Write("<script>alert('发送信息失败!')</script>");
        }
        protected void Button8_Click1(object sender, EventArgs e)
        {
            Unsee();
            string user = TextBox1.Text;
            int sea = date.Search(user, out search);
            if (sea == 0)
            {
                switch (search.Count)
                {
                    case 0:
                        break;
                    case 1:
                        load_1(search[0]);
                        break;
                    case 2:
                        load_1(search[0]);
                        load_2(search[1]);
                        break;
                    case 3:
                        load_1(search[0]);
                        load_2(search[1]);
                        load_3(search[2]);
                        break;
                    case 4:
                        load_1(search[0]);
                        load_2(search[1]);
                        load_3(search[2]);
                        load_4(search[3]);
                        break;
                }
            }
            else
                Response.Write("<script>alert('查找失败!')</script>");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Unsee();
            if (search.Count>0)
            {
                switch (search.Count)
                {
                    case 1:
                        load_1(search[0]);
                        break;
                    case 2:
                        load_1(search[0]);
                        load_2(search[1]);
                        break;
                    case 3:
                        load_1(search[0]);
                        load_2(search[1]);
                        load_3(search[2]);
                        break;
                    case 4:
                        load_1(search[0]);
                        load_2(search[1]);
                        load_3(search[2]);
                        load_4(search[3]);
                        break;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Unsee();
            if (search.Count - 4 > 0)
            {
                switch (search.Count-4)
                {
                    case 1:
                        load_1(search[4]);
                        break;
                    case 2:
                        load_1(search[4]);
                        load_2(search[5]);
                        break;
                    case 3:
                        load_1(search[4]);
                        load_2(search[5]);
                        load_3(search[6]);
                        break;
                    case 4:
                        load_1(search[4]);
                        load_2(search[5]);
                        load_3(search[6]);
                        load_4(search[7]);
                        break;
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Unsee();
            if (search.Count - 8 > 0)
            {
                switch (search.Count - 8)
                {
                    case 1:
                        load_1(search[8]);
                        break;
                    case 2:
                        load_1(search[8]);
                        load_2(search[9]);
                        break;
                    case 3:
                        load_1(search[8]);
                        load_2(search[9]);
                        load_3(search[10]);
                        break;
                    case 4:
                        load_1(search[8]);
                        load_2(search[9]);
                        load_3(search[10]);
                        load_4(search[11]);
                        break;
                }
            }
        }

        protected void Button_sent1_Click(object sender, EventArgs e)
        {
            string name_to = Label_name1.Text;
            int inv = date.invitations(name_to, name);
            if (inv == 0)
            {
                Button_sent1.Text = "Already Sent";
                Button_sent1.Enabled = false;
            }
            else
                Response.Write("<script>alert('发送邀请失败!')</script>");
        }
    }
}