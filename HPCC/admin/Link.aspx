<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Link.aspx.cs" Inherits="HPCC.admin.Link" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ObjectDataSource ID="odsLink" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="HPCC.dal.DataSet_T_LinkTableAdapters.T_LinkTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LinkURL" Type="String" />
            <asp:Parameter Name="LinkDescription" Type="String" />
            <asp:Parameter Name="PicAdress" Type="String" />
            <asp:Parameter Name="AddTime" Type="DateTime" />
            <asp:Parameter Name="AddAuthor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LinkURL" Type="String" />
            <asp:Parameter Name="LinkDescription" Type="String" />
            <asp:Parameter Name="PicAdress" Type="String" />
            <asp:Parameter Name="AddTime" Type="DateTime" />
            <asp:Parameter Name="AddAuthor" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="odsLink"   CssClass="ui-table">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="链接Id"
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="LinkURL" HeaderText="链接网址" 
                SortExpression="LinkURL" />
                  <asp:HyperLinkField  DataTextField="LinkDescription"  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Edit_Link.aspx?Id={0}" HeaderText="链接描述" /> 

            <asp:BoundField DataField="PicAdress" HeaderText="链接图片地址" 
                SortExpression="PicAdress" />
            <asp:BoundField DataField="AddTime" HeaderText="添加时间" 
                SortExpression="AddTime" />
            <asp:BoundField DataField="AddAuthor" HeaderText="添加者" 
                SortExpression="AddAuthor" />
        </Columns>
    </asp:GridView>

</asp:Content>
