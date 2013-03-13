<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Edit_Audit.aspx.cs" Inherits="HPCC.admin.Edit_Audit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
       .txtarea
        {
            width: 400px;
            height: 120px;
            margin: 2px 0;
        }
            table tr td:first-child
        {
            text-align: right;
            width: 130px;
            vertical-align: top;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="App" runat="server">
     <tr>
            <td>
                申请人:
            </td>
            <td>
                <asp:TextBox ID="txtTrueName" runat="server" Enabled="false"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                所在学院:
            </td>
            <td>
                <asp:TextBox ID="txtXueYuan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                申请目的:
            </td>
            <td>
                <asp:TextBox ID="txtApp_Purpose" runat="server" TextMode="MultiLine" CssClass="txtarea"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                申请使用时间:
            </td>
            <td>
                <asp:TextBox ID="txtApp_TimeLength" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                使用时所需软件:
            </td>
            <td>
                <asp:TextBox ID="txtApp_Software" runat="server" TextMode="MultiLine" CssClass="txtarea"></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td>
                审核状态:
            </td>
            <td>
                <asp:DropDownList ID="ListAudit" runat="server">
                <asp:ListItem Value="1">通过</asp:ListItem>
                <asp:ListItem Value="0">不通过</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                备注:
            </td>
            <td>
                <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" CssClass="txtarea"></asp:TextBox>
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
