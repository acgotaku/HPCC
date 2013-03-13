<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="HPCC.Module.Header" %>
<script src="../Scripts/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>
<script src="../Scripts/jquery.fancybox.pack.js" type="text/javascript"></script>
<link href="../css/jquery.fancybox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

    $(document).ready(function () {
        $(".fancybox").fancybox({
            maxWidth: 800,
            maxHeight: 600,
            fitToView: false,
           
            autoSize: true,
            closeClick: false,
            openEffect: 'none',
            closeEffect: 'none'
        });
    });
    $(function () {
        $("#UserLogin").click(function () {
            $.post("Login.ashx", { "UserName": $("#Name").val(), "Password": $("#password").val() }, function (data, status) {
                if (status == "success") {
                    if (data == "right") {
                        location.reload();
                    }
                    else {

                        $("#error").text("密码或用户名错误!");
                    }

                }
                else {
                    alert("与数据库连接失败！");
                }

            });
        });


    });
</script>
<div class="header">
<div id="logo">
</div>
<div id="login">
<div class="reg" runat="server" id="Login_Before">
<a href="#LoginBox" class="fancybox inputBtn">登录</a>
<a href="UserReg.aspx?Method=Reg" class="inputBtn">注册</a>
</div>
<div runat="server" id="Login_After" class="login_after">
欢迎您:<asp:Label ID="UserName" runat="server" ></asp:Label>&nbsp;
<asp:LinkButton ID="Quit" runat="server" onclick="Quit_Click">安全退出</asp:LinkButton>
   
</div>
</div>
</div>
<div id="wrapper"> 
      <!-- start menu -->
      <div id="menu">
        <ul>
          <li>
            <a href="index.aspx">首页</a>
          </li>
           <li>
            <a href="UserReg.aspx?Method=App">云服务</a>
          </li>
          <li>
            <a href="News.aspx?Id=11">中心简介</a>
          </li>
          <li>
            <a href="News.aspx?Id=12">支持与下载</a>
          </li>
          <li>
            <a href="News.aspx?Id=13">个性化服务</a>
          </li>
          <li>
            <a href="">论坛</a>
          </li>
          <li>
            <a href="News.aspx?Id=14">联系我们</a>
          </li>
          
        </ul>
      </div>
      <!-- end menu --> 
    </div>
    <!-- end wrapper --> 
    <div style="clear:both;">
    
    </div>
<div id="LoginBox" style="width: 500px; height:260px; display: none;">
<div id="login_top">&nbsp;&nbsp;&nbsp;&nbsp;用户登录</div>
<div id="login_left"></div>
<div id="login_right">
  用户名:<input type="text" maxlength="18" id="Name" name="Name" /><br />
  
  密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" maxlength="18" id="password" name="passwprd" /><br />
  <span style="color:Red; line-height:10px;" id="error">&nbsp;</span><br />
  <input type="button" value="登录" class="inputBtn" id="UserLogin"  style="margin-left:30px;" />
  
 <a href="UserReg.aspx?Method=Reg"><input type="button" value="注册" class="inputBtn" style="margin-left:30px;" /></a>
 </div>
</div>
