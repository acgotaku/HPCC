using System;
using System.Collections.Generic;
using System.Web;
using HPCC.dal.DataSet_T_UserTableAdapters;

namespace HPCC
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    public class Login : IHttpHandler, System.Web.SessionState.IRequiresSessionState 
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
           // context.Response.Write("Hello World");
            string UserName = context.Request["UserName"];
            string Password = context.Request["Password"];
            T_UsersTableAdapter adapter = new T_UsersTableAdapter();
             var rows= adapter.GetDataByUserNameAndPassword(UserName,HashPassword.Hash(Password));
             string data = "";
             if (rows.Count == 1)
             {
                 HttpContext.Current.Session["UserName"] = UserName;
                 HttpContext.Current.Session["TrueName"] = rows[0].TrueName;
                 HttpContext.Current.Session["UserId"] = rows[0].Id;
                  data = "right";
                 context.Response.Write(data);

             }
             else
             {
                 data = "error";
                 context.Response.Write(data);
             
             }


        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}