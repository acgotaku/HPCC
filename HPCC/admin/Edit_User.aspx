<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Edit_User.aspx.cs" Inherits="HPCC.admin.Edit_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
  table tr td:first-child
        {
            text-align: right;
            width: 200px;
            vertical-align: top;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <table width="600px" id="Reg" runat="server" >
        <tr>
            <td>
                用户名(只能是英文或数字):
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td>
                是否设为管理员:
            </td>
            <td>
                <asp:DropDownList ID="ListAdmin" runat="server">
                 <asp:ListItem Value="1" Selected="True">是</asp:ListItem>
                  <asp:ListItem Value="0">否</asp:ListItem>
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td>
                真实姓名:
            </td>
            <td>
                <asp:TextBox ID="txtTrueName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                邮箱:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td>
                手机号码:
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox> 
            </td>
        </tr>
         <tr>
            <td>
               
            </td>
            <td>
                <asp:Button ID="btn_Submit" runat="server" Text="提交" class="inputBtn register" OnClientClick="return confirm('您确定信息填写正确吗?');"
                    OnClick="btn_Submit_Click" />
            </td>
        </tr>
     </table>
</asp:Content>
