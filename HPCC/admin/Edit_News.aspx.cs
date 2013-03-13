using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_NewsClassTableAdapters;

namespace HPCC.admin
{
    public partial class Edit_News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowIndex != -1)
            {
                string Id = e.Row.Cells[5].Text;
                T_NewsClassTableAdapter adapter = new T_NewsClassTableAdapter();
                var rows = adapter.GetDataById(Convert.ToInt64(Id));
                e.Row.Cells[5].Text = rows[0].NewsClassName;
             
            }
        }
    }
}