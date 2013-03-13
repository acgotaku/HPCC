<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Add_News.aspx.cs" Inherits="HPCC.admin.Add_News" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
    <link href="ckeditor/contents.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div >
<table>
<tr><td>新闻名称:</td><td>
    <asp:TextBox ID="txtNewsTitle" runat="server"></asp:TextBox></td></tr>
<tr><td>新闻分类:</td><td>
    <asp:DropDownList ID="DropListNewsClass" runat="server">
    </asp:DropDownList>
    </td></tr>
<tr><td>发布者:</td><td>
    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox></td></tr>
<tr><td>新闻正文:</td><td>
    <asp:TextBox ID="txtNewsContent" runat="server" TextMode="MultiLine" CssClass="ckeditor"></asp:TextBox></td></tr>
<tr><td>点击次数:</td><td>
    <asp:TextBox ID="txtClickNum" runat="server"></asp:TextBox></td></tr>
<tr><td>发布时间:</td><td>
    <asp:TextBox ID="txtAddTime" runat="server"></asp:TextBox></td></tr>
<tr><td>
    <asp:Button ID="Btn_Submit" runat="server" Text="发布" 
        onclick="Btn_Submit_Click" /></td><td><input type="reset"  value="重填"/></td></tr>
</table>
</div>
</asp:Content>
