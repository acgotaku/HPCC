<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="NewsList.aspx.cs" Inherits="HPCC.NewsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
 <style type="text/css">
     #Content
     {
         width: 980px;
         margin: 0 auto;
         min-height: 400px;
     }
     #left
     {
        width:290px;
        float:left;
        
         min-height:600px;
         background-image:url(img/left.jpg);
     }
     #right
     {
         width: 690px;
         float: right;
         min-height: 400px;
     }
     .title
     {
         text-align: center;
         font-weight: bolder;
         margin-top: 10px;
         border: 2px dotted #006eb5;
     }
     .center
     {
         text-align: left;
     }
     .ui-table
     {  width: 690px;
         text-align: left;
         border-collapse: collapse;
         background-color: White;
     }
     .ui-table a
     {
         color: Black;
     }
  .ui-table a:hover
{
    text-decoration:none;
    color:Red;
}
     .ui-table th
     {
         background-color: #D5DFF1;
     }
     .ui-table td, .ui-table th
     {
         padding: 1px 4px;
         border: solid 1px #ccc;
        
         vertical-align: middle;
     }
     .ui-table tr:hover
     {
         background-color: #D5DFF1;
     }
 </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
<div id="Content">
<div id="left">

</div>
<div id="right">



    <asp:ObjectDataSource ID="odsNewsClass" runat="server" DeleteMethod="Delete"  
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByNewsClass" 
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
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="NewsClass" 
                QueryStringField="NewsClass" Type="Int32" />
        </SelectParameters>
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
   <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  CssClass="ui-table"
        AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="odsNewsClass" 
        EnableModelValidation="True">
        <Columns>
          <asp:HyperLinkField  DataTextField="NewsTitle"  DataNavigateUrlFields="Id" DataNavigateUrlFormatString="News.aspx?Id={0}" HeaderText="新闻标题" /> 
                    
            <asp:BoundField DataField="NewsAuthor" HeaderText="新闻发布者" 
                SortExpression="NewsAuthor" />
        
            <asp:BoundField DataField="NewsTime" HeaderText="发布时间" 
                SortExpression="NewsTime" />
        
        </Columns>
    </asp:GridView>


</div>

 

    <asp:ObjectDataSource ID="odsTime" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataByTime" 
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

 

</div>
<div class="clear"></div>
</asp:Content>
