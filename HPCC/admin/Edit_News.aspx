<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Edit_News.aspx.cs" Inherits="HPCC.admin.Edit_News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ObjectDataSource ID="odsNews" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="HPCC.dal.DataSet_T_NewsTableAdapters.T_NewsTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NewsTitle" Type="String" />
            <asp:Parameter Name="NewsText" Type="String" />
            <asp:Parameter Name="NewsAuthor" Type="String" />
            <asp:Parameter Name="NewsClick" Type="Int64" />
            <asp:Parameter Name="NewsTime" Type="DateTime" />
            <asp:Parameter Name="NewsClass" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NewsTitle" Type="String" />
            <asp:Parameter Name="NewsText" Type="String" />
            <asp:Parameter Name="NewsAuthor" Type="String" />
            <asp:Parameter Name="NewsClick" Type="Int64" />
            <asp:Parameter Name="NewsTime" Type="DateTime" />
            <asp:Parameter Name="NewsClass" Type="Int32" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
    </asp:ObjectDataSource>
  <asp:GridView ID="GridView1" runat="server" DataSourceID="odsNews" 
   CssClass="ui-table"  AutoGenerateColumns="False"  AllowPaging="True"  
        EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound">
        <Columns>
       
        <asp:BoundField DataField="Id" HeaderText="新闻Id" /> 
         <asp:HyperLinkField  DataTextField="NewsTitle"  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Add_News.aspx?Id={0}" HeaderText="新闻标题" /> 
       
        <asp:BoundField DataField="NewsAuthor" HeaderText="发布者" /> 
        <asp:BoundField DataField="NewsClick" HeaderText="点击次数" /> 
        <asp:BoundField DataField="NewsTime" HeaderText="添加时间" />
        <asp:BoundField DataField="NewsClass" HeaderText="新闻分类" /> 
       
        </Columns>


    </asp:GridView>
</asp:Content>
