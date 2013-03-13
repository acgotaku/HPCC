using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HPCC.dal.DataSet_T_UserTableAdapters;
using HPCC.dal.DataSet_T_ApplicationTableAdapters;


namespace HPCC
{
    public partial class UserReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {

                if (Session["UserName"] != null)
                {
                    Reg.Visible = false;
                    App.Visible = true;
                    this.Title = "云服务申请";
                }
                if (Request["Method"] == "Reg")
                {
                    Reg.Visible = true;
                    App.Visible = false;
                    this.Title = "用户注册";
                }
                if (Request["Method"] == "App" && Session["UserName"] == null)
                {

                    Reg.Visible = true;
                    App.Visible = true;
                    this.Title = "云服务申请";
                }
            }

        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                string UserName = txtUserName.Text.Trim();
                string TrueName = txtTrueName.Text.Trim();
                string Password = txtPassword.Text.Trim();
                string Password2 = txtPassword2.Text.Trim();
                string Email = txtEmail.Text.Trim();
                string Phone = txtPhone.Text.Trim();
                if (Password.Length == 0)
                {
                    Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "密码不能为空!"));
                    return;

                }
                if (Password != Password2)
                {
                    Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", "两次输入的密码不一样!"));
                    return;

                }
                try
                {
                    HPCC.HPCJSPReq req = new HPCJSPReq();
                    string s = req.createUser(UserName, Password);
                    if (!"1".Equals(s))
                    {
                        String Error = HPCJSPHelper.getHelpInfo("create", s);
                        Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", Error+ " 请联系管理员!"));
                        return;
                    
                    }
                    T_UsersTableAdapter adapter = new T_UsersTableAdapter();
                    adapter.InsertUser(UserName, TrueName, HashPassword.Hash(Password), 0, Email, Phone);
                    var rows = adapter.GetDataByUserNameAndPassword(UserName, HashPassword.Hash(Password));
                    HttpContext.Current.Session["UserId"] = rows[0].Id;
                    Session["UserName"] = UserName;
                    Session["TrueName"] = TrueName;
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", ex.Message + " 请联系管理员!"));
                    return;
                }

            }

            if (Request["Method"] == "App")
            {
                long UserId = Convert.ToInt64(Session["UserId"]);
                string XueYuan = DDLXueYuan.SelectedValue;
                string Purpose = txtApp_Purpose.Text;
                string TimeLength = txtApp_TimeLength.Text;
                string Software = txtApp_Software.Text;
                DateTime Time = DateTime.Now;
                int Audit = 0;
                string Remarks = txtRemarks.Text;
                T_ApplicationTableAdapter Appadapter = new T_ApplicationTableAdapter();

                try
                {
                    Appadapter.InsertApplication(UserId, XueYuan, Purpose, TimeLength, Software, Time, Audit, Remarks);
                }
                catch (Exception ex)
                {
                    Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "", string.Format("<script type='text/javascript'>alert('{0}');</script>", ex.Message + " 请联系管理员!"));
                    return;
                }
            }
            if (Session["UserName"] == null)
            {
                if (Request["Method"] == "App")
                {
                    Response.Write("<script>window.alert('恭喜您已经注册并申请成功!')</script>");
                    Response.Write("<script>window.location ='index.aspx';</script>");

                }
                else
                {
                    Response.Write("<script>window.alert('恭喜您已经注册成功!')</script>");
                    Response.Write("<script>window.location ='index.aspx';</script>");

                }

            }
            else
            {
                Response.Write("<script>window.alert('恭喜您已经申请成功!')</script>");
                Response.Write("<script>window.location ='index.aspx';</script>");

            
            }
            
        }
    }
}