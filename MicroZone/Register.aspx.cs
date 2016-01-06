using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicroZone
{
    public partial class Register : System.Web.UI.Page
    {
        Supports date = new Supports();
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.TextChanged += new EventHandler(TextBox1_TextChanged);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = TextBox1.Text;
            string s2 = TextBox2.Text;
            string s3 = TextBox3.Text;
            string s4 = TextBox4.Text;
            if (s1 == "" || s2 == "" || s3 == "" || s4 == "")
                Response.Write("<script>alert('请输入完整信息!')</script>");
            else if (s3 != s4)
                Response.Write("<script>alert('再次输入不正确!')</script>");
            else
            {
                int register = date.Register(s2, s1, s3);
                if (register == 0)
                {
                    Response.Write("<script>alert('注册成功!')</script>");
                    Response.Redirect("Login.aspx");
                }
                else
                    Response.Write("<script>alert('注册失败!')</script>");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            string s1 = TextBox1.Text;
            int nameExist = date.isNameExisted(s1);
            if (nameExist == 1)
                Response.Write("<script>alert('输入用户名已经存在!')</script>");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            string s2 = TextBox2.Text;
            int emialExist = date.isEmailExisted(s2);
            if (emialExist == 1)
                Response.Write("<script>alert('输入Email已经存在!')</script>");
        }
    }
}