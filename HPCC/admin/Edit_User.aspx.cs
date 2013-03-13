using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_UserTableAdapters;

namespace HPCC.admin
{
    public partial class Edit_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null)
                {
                    if (Request["Id"] != null)
                    {
                        long Id = Convert.ToInt64(Request["Id"]);
                        T_UsersTableAdapter adapter = new T_UsersTableAdapter();
                        var Users = adapter.GetDataById(Id);
                        txtTrueName.Text = Users[0].TrueName;
                        txtUserName.Text = Users[0].UserName;
                        txtEmail.Text = Users[0].Email;
                        txtPhone.Text = Users[0].Phone;
                        ListAdmin.SelectedValue = Users[0].Administrator.ToString();              
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
                    string UserName = txtUserName.Text;
                    string TrueName = txtTrueName.Text;
                    int admin = Convert.ToInt32(ListAdmin.SelectedValue);
                    string Email = txtEmail.Text;
                    string Phone = txtPhone.Text;
                    T_UsersTableAdapter adapter = new T_UsersTableAdapter();
                    try {
                        adapter.UpdateUser(UserName, TrueName, admin, Email, Phone, Convert.ToInt64(Request["Id"]));
                        Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "更新成功!"));
                    
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