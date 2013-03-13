using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPCC.Module
{
    public partial class Header : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Login_After.Visible = true;
                Login_Before.Visible = false;
                UserName.Text = Session["TrueName"].ToString();
            }
            else
            {
                Login_After.Visible = false;
                Login_Before.Visible = true;
            
            }
        }

        protected void Quit_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Session["TrueName"] = null;
            Response.Redirect("index.aspx");
        }
       
    }
}