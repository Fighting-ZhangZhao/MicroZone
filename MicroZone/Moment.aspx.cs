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
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Application["u_name"].ToString();
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}