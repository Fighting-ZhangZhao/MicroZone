﻿using System;
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
                    nickname = dr.GetString(4);
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
    }
}
