using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_NewsTableAdapters;

namespace HPCC
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["Id"]!=null)
               {
                string Id = Request["Id"].ToString();
                T_NewsTableAdapter adapter = new T_NewsTableAdapter();
                var news = adapter.GetDataById(Convert.ToInt64(Id));
                var newSingle=news[0];
                this.Title = newSingle.NewsTitle;
                txtTitle.Text = newSingle.NewsTitle;
                txtAuthor.Text = newSingle.NewsAuthor;
                txtClick.Text = newSingle.NewsClick.ToString();
                txtText.Text = newSingle.NewsText;
                txtTime.Text = newSingle.NewsTime.ToString();
                long click = newSingle.NewsClick + 1;
                adapter.UpdateClickById(click, Convert.ToInt64(Id));

               }
            }
        }
    }
}