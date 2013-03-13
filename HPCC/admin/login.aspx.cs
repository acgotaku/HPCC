using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_UserTableAdapters;

namespace HPCC.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            string UserName = txtUserName.Text;
            string Password = txtPassword.Text;
            T_UsersTableAdapter adapter = new T_UsersTableAdapter();
            var rows = adapter.GetDataByUserNameAndPassword(UserName, HashPassword.Hash(Password));
            if (rows.Count == 1)
            {
                var row = rows[0];
                if (row.Administrator == 1)
                {
                    HttpContext.Current.Session["UserName"] = UserName;
                    HttpContext.Current.Session["TrueName"] = rows[0].TrueName;
                    Response.Redirect("Add_News.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "对不起,您不是管理员!"));
                    return;
                }
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "用户名或密码错误!"));
                return;
            
            }
        }
    }
}