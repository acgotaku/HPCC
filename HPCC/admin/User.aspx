<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="HPCC.admin.User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:ObjectDataSource ID="odsAll" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="HPCC.dal.DataSet_T_UserTableAdapters.T_UsersTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="TrueName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Administrator" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="TrueName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Administrator" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  
        CssClass="ui-table"  AutoGenerateColumns="False"
        DataKeyNames="Id" DataSourceID="odsAll" 
        EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="用户Id" SortExpression="Id" />
            <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" />
            
          <asp:HyperLinkField  DataTextField="TrueName"  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Edit_User.aspx?Id={0}" HeaderText="真实姓名" /> 
            <asp:BoundField DataField="Administrator" HeaderText="是否管理员" SortExpression="Administrator" />
            <asp:BoundField DataField="Email" HeaderText="Email邮箱地址" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="手机号码" SortExpression="Phone" />
        </Columns>
    </asp:GridView>


</asp:Content>
