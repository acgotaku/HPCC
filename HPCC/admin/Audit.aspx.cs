using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_UserTableAdapters;

namespace HPCC.admin
{
    public partial class Audit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridViewAudit_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           

                if (e.Row.RowIndex != -1)
                {
                  string UserId=e.Row.Cells[1].Text;
                  T_UsersTableAdapter adapter = new T_UsersTableAdapter();
                 var rows= adapter.GetDataById(Convert.ToInt64(UserId));
                 e.Row.Cells[1].Text = rows[0].TrueName;
                    if (e.Row.Cells[7].Text == "0")
                    {
                        e.Row.Cells[7].Text = "未审核";
                    }
                    else if (e.Row.Cells[7].Text == "1")
                    {
                        e.Row.Cells[7].Text = "已审核";
                    }
                    else
                    {
                        e.Row.Cells[7].Text = "读取错误";
                    }
                } 
            
            
          
        }

        protected void RadionAudit_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadionAudit.SelectedValue == "全部")
            {

                GridViewAudit.DataSourceID = "odsAll";
                GridViewAudit.DataBind();
               
            }
            else
            {

                GridViewAudit.DataSourceID = "odsType";
                GridViewAudit.DataBind();
            }

        }
    }
}