using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_LinkTableAdapters;

namespace HPCC.admin
{
    public partial class Edit_Link : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    if (Request["Id"] != null)
                    {
                        T_LinkTableAdapter adapter = new T_LinkTableAdapter();
                        var Links = adapter.GetDataById(Convert.ToInt64(Request["Id"]));
                        var link = Links[0];
                        txtLinkURL.Text = link.LinkURL;
                        txtLinkDescription.Text = link.LinkDescription;
                        txtAuthor.Text = link.AddAuthor;
                        txtAddTime.Text = Convert.ToString(link.AddTime);
                        txtPicAdress.Text = link.PicAdress;
                    }
                    else
                    {
                        txtAddTime.Text = DateTime.Now.ToString();
                    
                    }
                }
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                if (Request["Id"] != null)
                {
                    string LinkURL = txtLinkURL.Text;
                    string LinkDes = txtLinkDescription.Text;
                    string Author = txtAuthor.Text;
                    DateTime AddTime = Convert.ToDateTime(txtAddTime.Text);
                    string PicAdress = txtPicAdress.Text;
                    T_LinkTableAdapter adapter = new T_LinkTableAdapter();
                    try
                    {
                        adapter.UpdateLinkById(LinkURL, LinkDes, PicAdress, AddTime, Author, Convert.ToInt64(Request["Id"]));
                        Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "更新成功!"));

                    }
                    catch (Exception ex)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", ex.Message + " 请联系管理员!"));
                        return;
                    }


                }
                else
                {

                    string LinkURL = txtLinkURL.Text;
                    string LinkDes = txtLinkDescription.Text;
                    string Author = txtAuthor.Text;
                    DateTime AddTime = Convert.ToDateTime(txtAddTime.Text);
                    string PicAdress = txtPicAdress.Text;
                    T_LinkTableAdapter adapter = new T_LinkTableAdapter();
                    try
                    {
                        adapter.InsertLink(LinkURL,LinkDes,PicAdress,AddTime,Author);
                        Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "添加成功!"));

                    }
                    catch (Exception ex)
                    {
                        Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", ex.Message + " 请联系管理员!"));
                        return;
                    }
                
                }
            }

        }
    }
}