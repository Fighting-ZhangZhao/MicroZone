using System;
using System.Web;
using System.Data.SqlClient;

namespace MicroZone
{
    public class Supports : IHttpHandler
    {
        /// <summary>
        /// 您将需要在网站的 Web.config 文件中配置此处理程序 
        /// 并向 IIS 注册它，然后才能使用它。有关详细信息，
        /// 请参见下面的链接: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpHandler Members

        public bool IsReusable
        {
            // 如果无法为其他请求重用托管处理程序，则返回 false。
            // 如果按请求保留某些状态信息，则通常这将为 false。
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            //在此处写入您的处理程序实现。
        }

        #endregion
        SqlConnection con = new SqlConnection("Sercer=121.42.32.109; Database=MicroZone; uid=sa; pwd=123456");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        void SqlInit()
        {
            con.Open();
            cmd.Connection = con;
        }

        void SqlExit()
        {
            con.Close();
        }
        string MD5(string s)
        {
            s=System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(s,"MD5");
            return s;
        }
        int Login(string uName, string uPass)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM users where email='" + uName + "' OR username='"+uName+"'";
                dr = cmd.ExecuteReader();
                if (dr.NextResult())
                {
                    if(dr.GetString(2)==MD5(uPass))
                    {
                        SqlExit();
                        return 2;
                    }
                    else
                    {
                        SqlExit();
                        return 1;
                    }
                }
                else
                {
                    SqlExit();
                    return 0;
                }
                
            }
            catch(SqlException e)
            {
                
            }

            SqlExit();
            return 0;
        }

        int isNameExisted(string uName)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM users where email='" + uName;
                dr = cmd.ExecuteReader();
                if(dr.NextResult())
                {
                    if(dr.GetString(1)==uName)
                    {
                        SqlExit();
                        return 2;
                    }
                }
            }
            catch (SqlException e)
            {

            }
            return 0;
        }
        int isEmailExisted(string eMail)
        {
            try
            {
                cmd.CommandText = "SELECT * FROM users where email='" + eMail;
                dr = cmd.ExecuteReader();
                if (dr.NextResult())
                {
                    if (dr.GetString(2) == eMail)
                    {
                        SqlExit();
                        return 1;
                    }
                }
            }
            catch (SqlException e)
            {

            }
            return 0;
        }

        int Register(string eMail ,string uName,string uPass)
        {
            try
            {
                cmd.CommandText = "INSERT INTO users VALUES（'email','uName','uPass'）";
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {

            }

            return 0;
        }
    }
}
