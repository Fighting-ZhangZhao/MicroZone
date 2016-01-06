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
        protected void Page_Load(object sender, EventArgs e)
        {
           /* name = Application["u_name"].ToString();
            int getinfo = date.getInformation(name, out emial, out nickname, out imageurl);
            if (getinfo == 666)
                Response.Write("<script>alert('信息丢失，请联系客服!')</script>");
            else
            {
                Image1.ImageUrl = imageurl;
                Label1.Text = name;
            }*/
        }
    }
}