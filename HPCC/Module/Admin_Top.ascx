<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Admin_Top.ascx.cs" Inherits="HPCC.Module.Admin_Top" %>
<link href="../css/Admin.css" rel="stylesheet" type="text/css" />
<div id="top">
<div id="login">
欢迎您:<asp:Label ID="UserName" runat="server" ></asp:Label>&nbsp;
<asp:LinkButton ID="Quit" runat="server" onclick="Quit_Click">安全退出</asp:LinkButton>
</div>
 <div style="clear:both;">
    </div>
</div>
