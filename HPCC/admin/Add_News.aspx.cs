using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_NewsClassTableAdapters;
using System.Data;
using HPCC.dal.DataSet_T_NewsTableAdapters;

namespace HPCC.admin
{
    public partial class Add_News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                T_NewsClassTableAdapter adapter = new T_NewsClassTableAdapter();
                DataTable dt = adapter.GetAllData();
                DropListNewsClass.DataSource = dt;
                DropListNewsClass.DataTextField = "NewsClassName";
                DropListNewsClass.DataValueField = "Id";
                DropListNewsClass.DataBind();
                txtAddTime.Text = DateTime.Now.ToString();
                if (Session["TrueName"]!=null)
                {
                
                  txtAuthor.Text = Session["TrueName"].ToString();
                }
              
                if (Request["Id"] != null)
                {
                    string Id = Request["Id"].ToString();
                    T_NewsTableAdapter Nwsadapter = new T_NewsTableAdapter();
                    var news = Nwsadapter.GetDataById(Convert.ToInt64(Id));
                    var newSingle = news[0];
                    txtNewsTitle.Text = newSingle.NewsTitle;
                    txtAuthor.Text = newSingle.NewsAuthor;
                    txtClickNum.Text = newSingle.NewsClick.ToString();
                    txtNewsContent.Text = newSingle.NewsText;
                    txtAddTime.Text = newSingle.NewsTime.ToString();
                    DropListNewsClass.SelectedValue = newSingle.NewsClass.ToString();

                }
            }
           
        }

        protected void Btn_Submit_Click(object sender, EventArgs e)
        {
            

                string NewsTitle = txtNewsTitle.Text;
                int NewsClass = Convert.ToInt32(DropListNewsClass.SelectedValue);
                string NewsText = txtNewsContent.Text;
                string NewsAuthor = txtAuthor.Text;
                long Click = -1;
                if (txtClickNum.Text == "")
                {
                    Click = 0;
                }
                else
                {
                    Click = Convert.ToInt64(txtClickNum.Text);
                }
              
                DateTime AddTime = Convert.ToDateTime(txtAddTime.Text);
            
           
            if (NewsText.Length == 0)
            {
                Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "新闻内容不能为空!"));
                return;
            
            }
            if (NewsTitle.Length == 0)
            {
                Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "新闻标题不能为空!"));
                return;

            }
            T_NewsTableAdapter adapter = new T_NewsTableAdapter();
            if (Request["Id"] != null)
            {

                adapter.UpdateNewsById(NewsTitle, NewsText, NewsAuthor, Click, AddTime, NewsClass, Convert.ToInt64(Request["Id"]));
                Response.Write("<script>window.alert('更新成功!')</script>");
                Response.Write("<script>window.location ='Add_News.aspx';</script>");
                return;
            }
            try {
               
                adapter.InsertNews(NewsTitle, NewsText, NewsAuthor, Click, AddTime, NewsClass);
                Response.Write("<script>window.alert('发布成功!')</script>");
                Response.Write("<script>window.location ='Add_News.aspx';</script>");
                return;

            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", ex.Message + " 请联系管理员!"));
                return;
            }
           
        }
    }
}