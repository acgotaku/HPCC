using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HPCC.Master
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            // this must be done in Page_Init or the controls 
            // will still use "ctl00_xxx", instead of "MyMasterPageID_xxx"
            this.ID = "HPCC";
        }
    }
}