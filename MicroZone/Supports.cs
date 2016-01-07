using System;
using System.Web;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Text;
using System.Security.Cryptography;

namespace MicroZone
{
    public class Supports 
    {
        
        
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
        string createMD5(string s)
        {
            // Use input string to calculate MD5 hash
            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(s);
            byte[] hashBytes = md5.ComputeHash(inputBytes);

            // Convert the byte array to hexadecimal string
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hashBytes.Length; i++)
            {
                sb.Append(hashBytes[i].ToString("X2"));
                // To force the hex string to lower-case letters instead of
                // upper-case, use he following line instead:
                // sb.Append(hashBytes[i].ToString("x2")); 
            }
            return sb.ToString();
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
                    if(dr.GetString(2)==createMD5(uPass))
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
                cmd.CommandText = "INSERT INTO [users] (email,username,password) VALUES('" + eMail + "','" + uName + "','" + createMD5(uPass) + "')";
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

        public int getInformation(string userName,out string eMail,out string nickname,out string photo)
        {
            eMail = "";
            nickname = "";
            photo = "";
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM users where username='" + userName + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    eMail = dr.GetString(0);
                    if(!dr.IsDBNull(4))
                        nickname = dr.GetString(4);
                    if(!dr.IsDBNull(3))
                        photo = dr.GetString(3);
                }
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
                    cmd.CommandText = "UPDATE users SET password='" + createMD5(newPass) + "' where username = '" + userName + "'";
                    cmd.ExecuteNonQuery();
                }
                catch (SqlException e)
                {
                    //error
                    SqlExit();
                    return 666;
                }
                //success
                SqlExit();
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
                cmd.CommandText = "UPDATE users SET nickname ='" + newNickname + "' where username='" + userName + "'";
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

        public int updatePhoto(string userName,string newPhoto)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "UPDATE users SET photo ='" + newPhoto + "' where username='" + userName + "'";
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


        public int getFriends(string userName, out List<string> friends, out List<string> inviting, out List<string> invited)
        {
            inviting = new List<string>();
            invited = new List<string>();
            friends = new List<string>();
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * FROM friends where username1 = '" + userName + "' OR username2= '" + userName + "'";
                dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    do
                    {
                        if(dr.GetString(0)== userName)
                        {
                            inviting.Add(dr.GetString(1));
                        }
                        else
                        {
                            invited.Add(dr.GetString(0));
                        }
                    } while (dr.Read());                    
                }
                int i = 0;
                while (i < invited.Count)
                {
                    if (inviting.Contains(invited[i]))
                    {
                        friends.Add(invited[i]);
                        inviting.Remove(invited[i]);
                        invited.RemoveAt(i);
                    }
                    else
                    {
                        i++;
                    }
                }
            }
            catch(SqlException e)
            {
                //error
                SqlExit();
                return 666;
            }

            friends.Sort();
            inviting.Sort();
            invited.Sort();
            //success
            SqlExit();
            return 0;
        }

        public int invitations(string userName1,string userName2)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "INSERT INTO friends VALUES('" + userName1 + "','" + userName2 + "')";
                cmd.ExecuteNonQuery();
            }
            catch(SqlException e)
            {
                SqlExit();
                return 666;
            }
            SqlExit();
            return 0;
        }

        public int refuse(string userName1,string userName2)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "DELETE FROM friends where username1='" + userName1 + "' AND username2='" + userName2 + "'";
                cmd.ExecuteNonQuery();
            }
            catch(SqlException e)
            {
                SqlExit();
                return 666;
            }
            SqlExit();
            return 0;
        }

        public int Search(string key,out List<string> searched)
        {
            searched = new List<string>();
            try
            {
                SqlInit();
                cmd.CommandText = "SELECT * from users where nickname LIKE '%" + key + "%' OR username = '" + key + "' OR email = '" + key + "'";
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    searched.Add(dr.GetString(1));
                }
                searched.Sort();
            }
            catch(SqlException e)
            {
                SqlExit();
                return 666;
            }
            SqlExit();
            return 0;
        }

        public int pubContents(string userName,string content)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "INSERT INTO contents (username,userdate,usercontent) VALUES('" + userName + "','" + System.DateTime.Now.ToString() + "','" + content + "')";
                cmd.ExecuteNonQuery();
            }
            catch(SqlException e)
            {
                SqlExit();
                return 666;
            }
            SqlExit();
            return 0;
        }

        public int pubComments(string userName,string content,int id)
        {
            try
            {
                SqlInit();
                cmd.CommandText = "INSERT INTO comment (comname,comdate,comcontent,id) VALUES('" + userName + "','" + System.DateTime.Now.ToString() + "','" + content + "',"+id+")";
                cmd.ExecuteNonQuery();
            }
            catch (SqlException e)
            {
                SqlExit();
                return 666;
            }
            SqlExit();
            return 0;
        }

        public int getContents(string userName, out List<string> name, out List<DateTime> date, out List<string> contents, out List<int> id)
        {
            List<string> friends;
            List<string> a, b;
            name = new List<string>();
            date = new List<DateTime>();
            contents = new List<string>();
            id = new List<int>();
            getFriends(userName, out friends, out a, out b);
            int i;
            if (friends.Count != 0) 
                i = friends.Count - 1;
            else
            {
                return 1;//no friends
            }
            cmd.CommandText = "SELECT * from contents where username = '"+userName+ "'OR username = '" + friends[i]+"'";
            while(i--!=0)
            {
                cmd.CommandText += "OR username = '" + friends[i] + "'";
            }
            cmd.CommandText += " ORDER by userdate DESC";
            try
            {
                SqlInit();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    name.Add(dr.GetString(0));
                    date.Add(dr.GetDateTime(1));
                    contents.Add(dr.GetString(2));
                    id.Add(dr.GetInt32(3));
                }
                
            }
            catch (SqlException e)
            {
                SqlExit();
                return 666;
            }
            SqlExit();
            return 0;
        }

        public int getComments(int id, out List<string> name, out List<DateTime> date, out List<string> comments)
        {
            name = new List<string>();
            date = new List<DateTime>();
            comments = new List<string>();
            cmd.CommandText = "SELECT * FROM comment where id=" + id.ToString() + " ORDER BY comdate DESC";
            try
            {
                SqlInit();
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    name.Add(dr.GetString(1));
                    date.Add(dr.GetDateTime(2));
                    comments.Add(dr.GetString(3));
                }
            }
            catch(SqlException e)
            {
                SqlExit();
                return 666;
            }
            if (name.Count == 0)
            {                
                SqlExit();
                return 1;//no comments
            }
            SqlExit();
            return 0;//success
        }
    }
}
