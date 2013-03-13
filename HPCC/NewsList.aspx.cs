using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPCC
{
    public partial class NewsList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (Request["NewsClass"].ToString() == "-1")
                {

                    GridView1.DataSourceID = "odsTime";
                    this.Title = "最新消息";

                }
                else
                {

                    GridView1.DataSourceID = "odsNewsClass";
                    this.Title = "通知公告";
                }
            
            }
        }
    }
}