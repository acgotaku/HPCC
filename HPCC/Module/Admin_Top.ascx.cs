using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPCC.Module
{
    public partial class Admin_Top : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TrueName"] == null)
            {
                Response.Write("<script>window.alert('对不起,请先登录!')</script>");
                Response.Write("<script>window.location ='login.aspx';</script>");

            }
            else
            {
                UserName.Text = Session["TrueName"].ToString();
            }

        }

        protected void Quit_Click(object sender, EventArgs e)
        {
            Session["TrueName"] = null;
            Session["UserName"] = null;
            Response.Redirect("login.aspx");
        }
    }
}