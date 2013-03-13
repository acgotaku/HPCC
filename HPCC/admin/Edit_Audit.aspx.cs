using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_ApplicationTableAdapters;
using HPCC.dal.DataSet_T_UserTableAdapters;

namespace HPCC.admin
{
    public partial class Edit_Audit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                if (Request["Id"] != null)
                {
                    long Id = Convert.ToInt64(Request["Id"]);
                    T_ApplicationTableAdapter adapter = new T_ApplicationTableAdapter();
                    var rows = adapter.GetDataById(Id);
                    long UserId = rows[0].UserId;
                    T_UsersTableAdapter Useradapter = new T_UsersTableAdapter();
                    var Users = Useradapter.GetDataById(UserId);
                    string TrueName = Users[0].TrueName;
                    txtTrueName.Text = TrueName;
                    ListAudit.SelectedValue = Convert.ToString(rows[0].Audit);
                    txtXueYuan.Text = rows[0].XueYuan;
                    txtApp_Purpose.Text = rows[0].App_Purpose;
                    txtApp_Software.Text = rows[0].App_Software;
                    txtApp_TimeLength.Text = rows[0].App_TimeLength;
                    txtRemarks.Text = rows[0].Remarks;
                
               }
            
            
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {   long Id = Convert.ToInt64(Request["Id"]);
                string XueYuan = txtXueYuan.Text;
                string Purpose = txtApp_Purpose.Text;
                string TimeLength = txtApp_TimeLength.Text;
                string Software = txtApp_Software.Text;
                int Audit = Convert.ToInt32(ListAudit.SelectedValue);
                string Remark = txtRemarks.Text;
                T_ApplicationTableAdapter adapter = new T_ApplicationTableAdapter();
                try
                {
                    adapter.UpdateApplication(XueYuan,Purpose,TimeLength,Software,Audit,Remark,Id);
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