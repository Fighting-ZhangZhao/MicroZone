using System;
using System.Web;
using System.Data.SqlClient;

namespace MicroZone
{
    public class Supports 
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
        SqlConnection con = new SqlConnection("Server='121.42.32.109'; Database=MicroZone; uid=sa; pwd=123456");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;

        void SqlInit()
        {
            try {
                con.Open();
                cmd.Connection = con;
            }
            catch(SqlException e)
            {

            }
        }

        void SqlExit()
        {
            try
            {
                con.Close();
            }
            catch(SqlException e)
            {

            }
        }
        string MD5(string s)
        {
            s=System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(s,"MD5");
            return s;
        }
        public int Login(string uName, string uPass)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM users where email='" + uName + "' OR username='"+uName+"'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if(dr.GetString(2)==MD5(uPass))
                    {
                        SqlExit();
                        //success
                        return 2;
                    }
                    else
                    {
                        SqlExit();
                        //pass error
                        return 1;
                    }
                }
                else
                {
                    SqlExit();
                    //name error
                    return 0;
                }
                
            }
            catch(SqlException e)
            {
                //error
                SqlExit();
                return 666;
            }

            SqlExit();
            return 0;
        }

        public int isNameExisted(string uName)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM users where username='" + uName + "'";
                dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    if(dr.GetString(1)==uName)
                    {
                        SqlExit();
                        //email existed
                        return 1;
                    }
                }
            }
            catch (SqlException e)
            {
                //error
                SqlExit();
                return 666;
            }
            SqlExit();
            //email can use
            return 0;
        }
        public int isEmailExisted(string eMail)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM users where email='" + eMail + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr.GetString(2) == eMail)
                    {
                        SqlExit();
                        //name existed
                        return 1;
                    }
                }
            }
            catch (SqlException e)
            {
                //error
                SqlExit();
                return 666;
            }
            SqlExit();
            //name can use
            return 0;
        }

        public int Register(string eMail ,string uName,string uPass)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "INSERT INTO [users] VALUES('" + eMail + "','" + uName + "','" + MD5(uPass) + "')";
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                //error
                SqlExit();
                return 666;
            }
            SqlExit();
            //success
            return 0;
        }

        public int changePass(string userName,string originPass,string newPass)
        {
            int returnint = Login(userName, originPass);
            if(returnint==2)
            {
                try
                {
                    SqlInit();
                    cmd.CommandText = "UPDATE users password='" + newPass + "' where username = '" + userName + "'";
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException e)
                {
                    //error
                    SqlExit();
                    return 666;
                }
                //success
                return 3;
            }
            SqlExit();
            return returnint;
        }

        public int changeNickname(string userName,string newNickname)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "UPDATE users nickname ='" + newNickname + "' where username='" + userName + "'";
                cmd.ExecuteNonQuery();
                
            }
            catch (SqlException e)
            {
                //error
                SqlExit();
                return 666;
            }
            SqlExit();
            //success
            return 0;
        }

        public string updatePhoto()
        {
            string location="";
            return location;
        }
        
    }
}
