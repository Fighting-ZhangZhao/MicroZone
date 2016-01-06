using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicroZone
{
    public partial class personPage : System.Web.UI.Page
    {
        private string username;
        Supports date = new Supports();
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Application["u_name"].ToString();
            Label_name.Text= username;
        }

        protected void Button_nick_change_Click(object sender, EventArgs e)
        {
            Label_nick.Visible = true;
            TextBox_nick.Visible = true;
            Button_nick.Visible = true;
        }

        protected void Button_AI_change_Click(object sender, EventArgs e)
        {
            Label_AI_1.Visible = true;
            Label_AI_2.Visible = true;
            Label_AI_3.Visible = true;
            TextBox_AI_1.Visible = true;
            TextBox_AI_2.Visible = true;
            TextBox_AI_3.Visible = true;
            Button_AI.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Image13.Visible = true;
            Image2.Visible = true;
            Image3.Visible = true;
            Image4.Visible = true;
            Image5.Visible = true;
            Image6.Visible = true;
            Image7.Visible = true;
            Image8.Visible = true;
            Image9.Visible = true;
            Image10.Visible = true;
            Image11.Visible = true;
            Image12.Visible = true;
            RadioButton_p1.Visible = true;
            RadioButton_p2.Visible = true;
            RadioButton_p3.Visible = true;
            RadioButton_p4.Visible = true;
            RadioButton_p5.Visible = true;
            RadioButton_p6.Visible = true;
            RadioButton_p7.Visible = true;
            RadioButton_p8.Visible = true;
            RadioButton_p9.Visible = true;
            RadioButton_p10.Visible = true;
            RadioButton_p11.Visible = true;
            RadioButton_p12.Visible = true;
            Button_avatar.Visible = true;
        }

        protected void RadioButton_p1_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p1.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p2_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p1.Checked =false;
            RadioButton_p2.Checked = true;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p3_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p1.Checked = false;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = true;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p4_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p1.Checked = false;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = true;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p5_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p5.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p6_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p6.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p7_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p7.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p8_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p8.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p9_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p9.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p10_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p10.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p11_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p11.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p1.Checked = false;
            RadioButton_p12.Checked = false;
        }

        protected void RadioButton_p12_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton_p12.Checked = true;
            RadioButton_p2.Checked = false;
            RadioButton_p3.Checked = false;
            RadioButton_p4.Checked = false;
            RadioButton_p5.Checked = false;
            RadioButton_p6.Checked = false;
            RadioButton_p7.Checked = false;
            RadioButton_p8.Checked = false;
            RadioButton_p9.Checked = false;
            RadioButton_p10.Checked = false;
            RadioButton_p11.Checked = false;
            RadioButton_p1.Checked = false;
        }

        protected void Button_AI_Click(object sender, EventArgs e)
        {
            string s1 = TextBox_AI_1.Text;
            string s2 = TextBox_AI_2.Text;
            string s3 = TextBox_AI_3.Text;
            if(s1==""||s2==""||s3=="")
                Response.Write("<script>alert('信息缺失!')</script>");
            else if(s2!=s3)
                Response.Write("<script>alert('再次输入密码与新密码不符!')</script>");
            else
            {
                int login = date.changePass(username, s1, s2);
                if(login==3)
                    Response.Write("<script>alert('密码修改成功!')</script>");
                else
                    Response.Write("<script>alert('原始密码错误!')</script>");
            }
        }

        protected void Button_nick_Click(object sender, EventArgs e)
        {
            string s1 = TextBox_nick.Text;
            if(s1=="")
                Response.Write("<script>alert('信息缺失!')</script>");
            else
            {
                int change = date.changeNickname(username, s1);
                if (change == 0)               
                    Response.Write("<script>alert('昵称修改成功!')</script>");               
                else
                    Response.Write("<script>alert('修改失败!')</script>");
            }
        }

        protected void Button_avatar_Click(object sender, EventArgs e)
        {
            string url;
            if (RadioButton_p1.Checked)
                url = "ftp://121.42.32.109/Photo/1.jpg";
            else if (RadioButton_p2.Checked)
                url = "ftp://121.42.32.109/Photo/2.jpg";
            else if (RadioButton_p3.Checked)
                url = "ftp://121.42.32.109/Photo/3.jpg";
            else if (RadioButton_p4.Checked)
                url = "ftp://121.42.32.109/Photo/4.jpg";
            else if (RadioButton_p5.Checked)
                url = "ftp://121.42.32.109/Photo/5.jpg";
            else if (RadioButton_p6.Checked)
                url = "ftp://121.42.32.109/Photo/6.jpg";
            else if (RadioButton_p7.Checked)
                url = "ftp://121.42.32.109/Photo/7.jpg";
            else if (RadioButton_p8.Checked)
                url = "ftp://121.42.32.109/Photo/8.jpg";
            else if (RadioButton_p9.Checked)
                url = "ftp://121.42.32.109/Photo/9.jpg";
            else if (RadioButton_p10.Checked)
                url = "ftp://121.42.32.109/Photo/10.jpg";
            else if (RadioButton_p11.Checked)
                url = "ftp://121.42.32.109/Photo/11.jpg";
            else 
                url = "ftp://121.42.32.109/Photo/12.jpg";
            int photo = date.updatePhoto(username, url);
            if (photo == 0)
            {
                Image1.ImageUrl = url;
                Response.Write("<script>alert('头像修改成功!')</script>");
            }
            else
                Response.Write("<script>alert('修改失败!')</script>");
        }
    }
}