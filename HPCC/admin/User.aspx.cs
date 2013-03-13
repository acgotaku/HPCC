using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPCC.admin
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowIndex != -1)
            {
                if (e.Row.Cells[3].Text == "0")
                {
                    e.Row.Cells[3].Text = "否";
                }
                else if (e.Row.Cells[3].Text == "1")
                {
                    e.Row.Cells[3].Text = "是";
                }
                else
                {
                    e.Row.Cells[3].Text = "读取错误";
                }
            }
        }
    }
}