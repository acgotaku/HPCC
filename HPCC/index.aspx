<%@ Page Title="安徽师范大学-高性能计算研究中心" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true"
    CodeBehind="index.aspx.cs" Inherits="HPCC.index" %>
<asp:Content ID="ContentHead" ContentPlaceHolderID="headContent" runat="server">
    <link href="css/nivo-slider.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery.nivo.slider.pack.js" type="text/javascript"></script>
    <!--[if lte IE 9]>
     <style type="text/css">
     .nivo-controlNav
     {
     display:none;
     
     }
    
     </style>
    <![endif]-->
    <style type="text/css">
        .News
        {
            line-height:25px;
          border: 1px solid #006eb5;
            border-top-width: 0px;
            width: 300px;
            padding-left:10px;
        }
        .News a:hover
        {
            text-decoration: none;
            color: Red;
            cursor: pointer;
        }
        .News a
        {
            text-decoration: none;
            color: Black;
            cursor: pointer;
        }
        .top,
        .top a
        {
            width: 312px;
            height: 28px;
            background-repeat: no-repeat;
            text-align:right;
            color:#006eb5;
            line-height:32px;
          
        }
      
      #TopNotice
      {
      background-image:url(img/nav_01.jpg);    
          
      }
      .content
      {
          
       float:left;   
       }
       #TopLast
       {
           
          background-image:url(img/nav_02.jpg);    
             
        }
         #TopLink
       {
           
          background-image:url(img/nav_03.jpg);    
             
        }
        .space
        {
         width:22px; 
         float:left;
         height:10px;  
         }
         #NewsContent
         {
          margin-top:10px; 
          margin-bottom:10px;
          font-size:13px;  
          width:980px;
        
          }
         
    </style>
</asp:Content>
<asp:Content ID="ContentPage" ContentPlaceHolderID="PageContent" runat="server">
    <asp:ObjectDataSource ID="odsNewsClass1" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="Get5DataByNewsClass1" 
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
    <asp:ObjectDataSource ID="odsTime" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="Get5DataByTime" 
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
    <asp:ObjectDataSource ID="odsLink" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="Get5DataByTime" 
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
 <div id="wrapper">
        <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
                <a href="#"><img src="img/1.jpg" alt="" /></a>
				 <a href="#"><img src="img/2.jpg" alt="" /></a>
				  <a href="#"><img src="img/3.jpg" alt="" /></a>
				   <a href="#"><img src="img/4.jpg" alt="" /></a>
            </div>
            
        </div>

    </div>
    
<div id="NewsContent">
<div class="content">
   <div class="top" id="TopNotice" >
    <a href="NewsList.aspx?NewsClass=1"><span>more>></span></a>    
        </div>
   
    <div  class="News">
        <asp:DataList ID="DataListNewClass1" runat="server" DataKeyField="Id"  
            DataSourceID="odsNewsClass1">
            <ItemTemplate>
            <a href="News.aspx?Id=<%# Eval("Id") %>" target="_blank"><asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("NewsTitle") %>' /> </a>
            </ItemTemplate>
        </asp:DataList>

   </div>

</div>
  <div class="space" ></div>
    <div class="content">
   <div class="top" id="TopLast" >
     <a href="NewsList.aspx?NewsClass=-1"><span>more>></span></a>   
        </div>
   
    <div  class="News">
        <asp:DataList ID="DataListTime" runat="server" DataKeyField="Id"  
            DataSourceID="odsTime">
            <ItemTemplate>
            <a href="News.aspx?Id=<%# Eval("Id") %>" target="_blank"><asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("NewsTitle") %>' /> </a>
            </ItemTemplate>
        </asp:DataList>

   </div>

</div>
 <div class="space" ></div>
 <div class="content">
   <div class="top" id="TopLink" >
        more>>
        </div>
   
    <div  class="News">
        <asp:DataList ID="DataListLink" runat="server" DataKeyField="Id"  
            DataSourceID="odsLink">
            <ItemTemplate>
            <a href="<%# Eval("LinkURL") %>" target="_blank"><asp:Label ID="NewsTitleLabel" runat="server" Text='<%# Eval("LinkDescription") %>' /> </a>
            </ItemTemplate>
        </asp:DataList>

   </div>

</div>
    <div class="clear"></div>



</div>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>

</asp:Content>
