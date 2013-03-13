<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Edit_Link.aspx.cs" Inherits="HPCC.admin.Edit_Link" %>
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
               链接网址:
            </td>
            <td>
                <asp:TextBox ID="txtLinkURL" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td>
                链接描述:
            </td>
            <td>
                <asp:TextBox ID="txtLinkDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                链接图片地址:
            </td>
            <td>
                <asp:TextBox ID="txtPicAdress" runat="server"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td>
                添加时间:
            </td>
            <td>
                <asp:TextBox ID="txtAddTime" runat="server"></asp:TextBox> 
            </td>
        </tr>
            <tr>
            <td>
                添加者:
            </td>
            <td>
                <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox> 
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
