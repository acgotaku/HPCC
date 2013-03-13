<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="HPCC.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
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
            line-height: 25px;
            border: 1px solid #006eb5;
            border-top-width: 0px;
            width: 300px;
            padding-left: 10px;
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
        .top, .top a
        {
            width: 312px;
            height: 28px;
            background-repeat: no-repeat;
            text-align: right;
            color: #006eb5;
            line-height: 32px;
        }
        
        #TopNotice
        {
            background-image: url(img/nav_01.jpg);
        }
        .content
        {
            float: left;
        }
        #TopLast
        {
            background-image: url(img/nav_02.jpg);
        }
        #TopLink
        {
            background-image: url(img/nav_03.jpg);
        }
        .space
        {
            width: 22px;
            float: left;
            height: 10px;
        }
        #NewsContent
        {
            margin-top: 10px;
            margin-bottom: 10px;
            font-size: 13px;
            width: 980px;
            height:160px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">

        <div class="slider-wrapper  theme-default ">
            <div id="slider" class="nivoSlider">
                <a href="#"><img src="img/1.jpg" alt="" /></a>
				 <a href="#"><img src="img/2.jpg" alt="" /></a>
				  <a href="#"><img src="img/3.jpg" alt="" /></a>
				   <a href="#"><img src="img/4.jpg" alt="" /></a>
            </div>
            
        </div>

    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
</asp:Content>
