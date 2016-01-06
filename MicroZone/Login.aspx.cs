using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MicroZone
{
    public partial class Login : System.Web.UI.Page
    {
        Supports date = new Supports();
        public string username;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = TextBox1.Text;
            string s2 = TextBox2.Text;
            if (s1 == "")
                Response.Write("<script>alert('请输入用户名!')</script>");
            else if (s2 == "")
                Response.Write("<script>alert('请输入密码!')</script>");
            else
            {
                int islogin = date.Login(s1, s2);
                if (islogin == 0)
                    Response.Write("<script>alert('用户名错误!')</script>");
                else if (islogin == 1)
                    Response.Write("<script>alert('密码错误!')</script>");
                else//登录主界面
                {
                    username = s1;
                    Application["u_name"] = s1;
                    Response.Redirect("personPage.aspx");
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}