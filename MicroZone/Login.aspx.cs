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
        Supports s = new Supports();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = TextBox1.Text;
            string s2 = TextBox2.Text;
            string s3 = TextBox3.Text;
            int n=s.Register(s1,s2,s3);
        }
    }
}