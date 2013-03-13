<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Audit.aspx.cs" Inherits="HPCC.admin.Audit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
#right
{
 float:left;   
 width:85%;  
 }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:ObjectDataSource ID="odsAll" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="HPCC.dal.DataSet_T_ApplicationTableAdapters.T_ApplicationTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Int64" />
            <asp:Parameter Name="XueYuan" Type="String" />
            <asp:Parameter Name="App_Purpose" Type="String" />
            <asp:Parameter Name="App_TimeLength" Type="String" />
            <asp:Parameter Name="App_Software" Type="String" />
            <asp:Parameter Name="App_Time" Type="DateTime" />
            <asp:Parameter Name="Audit" Type="Int32" />
            <asp:Parameter Name="Remarks" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="Int64" />
            <asp:Parameter Name="XueYuan" Type="String" />
            <asp:Parameter Name="App_Purpose" Type="String" />
            <asp:Parameter Name="App_TimeLength" Type="String" />
            <asp:Parameter Name="App_Software" Type="String" />
            <asp:Parameter Name="App_Time" Type="DateTime" />
            <asp:Parameter Name="Audit" Type="Int32" />
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
    </asp:ObjectDataSource>
<asp:ObjectDataSource ID="odsType" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByAudit" 
        TypeName="HPCC.dal.DataSet_T_ApplicationTableAdapters.T_ApplicationTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserId" Type="Int64" />
            <asp:Parameter Name="XueYuan" Type="String" />
            <asp:Parameter Name="App_Purpose" Type="String" />
            <asp:Parameter Name="App_TimeLength" Type="String" />
            <asp:Parameter Name="App_Software" Type="String" />
            <asp:Parameter Name="App_Time" Type="DateTime" />
            <asp:Parameter Name="Audit" Type="Int32" />
            <asp:Parameter Name="Remarks" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="RadionAudit" DefaultValue="0" Name="Audit" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserId" Type="Int64" />
            <asp:Parameter Name="XueYuan" Type="String" />
            <asp:Parameter Name="App_Purpose" Type="String" />
            <asp:Parameter Name="App_TimeLength" Type="String" />
            <asp:Parameter Name="App_Software" Type="String" />
            <asp:Parameter Name="App_Time" Type="DateTime" />
            <asp:Parameter Name="Audit" Type="Int32" />
            <asp:Parameter Name="Remarks" Type="String" />
            <asp:Parameter Name="Original_Id" Type="Int64" />
        </UpdateParameters>
    </asp:ObjectDataSource>
  
<div id="right">
  <asp:RadioButtonList ID="RadionAudit" runat="server" RepeatDirection="Horizontal" 
        AutoPostBack="True" onselectedindexchanged="RadionAudit_SelectedIndexChanged">
     <asp:ListItem Value="0" Selected="True">未审核</asp:ListItem>
        <asp:ListItem Value="1">已审核</asp:ListItem>
        <asp:ListItem Value="全部">全部申请</asp:ListItem>
    </asp:RadioButtonList>
    <asp:GridView ID="GridViewAudit" runat="server" AllowPaging="True"  
        CssClass="ui-table"  AutoGenerateColumns="False"
        DataSourceID="odsType" EnableModelValidation="True" 
        onrowdatabound="GridViewAudit_RowDataBound">
        <Columns>
        <asp:HyperLinkField  DataTextField="Id"  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Edit_Audit.aspx?Id={0}" HeaderText="申请ID" /> 
        <asp:BoundField DataField="UserId" HeaderText="用户名" /> 
        <asp:BoundField DataField="XueYuan" HeaderText="所在学院" />
        <asp:BoundField DataField="App_Purpose" HeaderText="申请目的" /> 
        <asp:BoundField DataField="App_TimeLength" HeaderText="申请使用时长" /> 
        <asp:BoundField DataField="App_Software" HeaderText="申请使用所需的软件" />
        <asp:BoundField DataField="App_Time" HeaderText="申请时间" /> 
        <asp:BoundField DataField="Audit" HeaderText="审核状态" />
        <asp:BoundField DataField="Remarks" HeaderText="备注" />
        </Columns>
    </asp:GridView>
  </div>  
<div class="clear"></div>

</asp:Content>
