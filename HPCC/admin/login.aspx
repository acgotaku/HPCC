<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HPCC.admin.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台登录</title>
    <link href="../css/Admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    #content
    {
        width:980px;
        height:600px;
        background-repeat:no-repeat;
        margin:0 auto;
        margin-top:100px;
       background-image:url(../img/admin_login.jpg);   
       position:relative; 
    }
    #login
    {
    margin-right:300px;
    line-height:50px;
    margin-top:100px;
   
    }
#Btn_Login
{
    margin-left:50px;
    margin-top:20px;
    
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content">
    <div id="login">
    用户名:<asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
    密&nbsp;&nbsp;&nbsp;&nbsp;码:<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="Btn_Login" runat="server" Text="登录" CssClass="inputBtn" 
            onclick="Btn_Login_Click"  />
    </div>
    </div>
    </form>
</body>
</html>
