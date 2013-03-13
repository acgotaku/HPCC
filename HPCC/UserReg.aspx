<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="HPCC.UserReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <style type="text/css">
        table tr td:first-child
        {
            text-align: right;
            width: 400px;
            vertical-align: top;
        }
        input.register
        {
            font-size: 18px;
            width: 80px;
            height: 30px;
            margin-left: 30px;
        }
        .txtarea
        {
            width: 400px;
            height: 120px;
            margin: 2px 0;
        }
        #Top
        {
            height: 60px;
            width: 80%;
            background-image: url(img/reg.jpg);
            margin-left: 200px;
            background-repeat: no-repeat;
        }
        #content
        {
            border:2px;
            border-color:#006eb5;
            border-style:dotted;
            width:980px;
        }
    </style>
    <script type="text/javascript">

         $(function () {
             function check(reg, str) {
                 var regex = new RegExp(reg);
                 if (regex.test(str) == false) {
                     return false;
                 }
                 else {
                     return true;
                 }
             }
             
             var regTelephone = /^\d{11}$/;
             var regEmail = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
             var regUserName = /^[a-z0-9_-]{3,16}$/;

             $("#HPCC_PageContent_txtPhone").blur(function () {
                 var Telephone = $("#HPCC_PageContent_txtPhone").val();
                 if (check(regTelephone, Telephone) == false) {
                     $("#Telephone_check").text("手机号码格式不正确!");
                 }
                 else {
                     $("#Telephone_check").text("");
                 }
             });
             $("#HPCC_PageContent_txtUserName").blur(function () {
                 var UserName = $("#HPCC_PageContent_txtUserName").val();
                 if (check(regUserName, UserName) == false) {
                     $("#UserName_check").text("用户名格式不正确!");
                 }
                 else {
                     $("#UserName_check").text("");
                 }
             });

             $("#HPCC_PageContent_txtEmail").blur(function () {
                 var L_Email = $("#HPCC_PageContent_txtEmail").val();
                 if (check(regEmail, L_Email) == false) {
                     $("#Email_check").text("邮箱格式不正确!");
                 }
                 else {
                     $("#Email_check").text("");
                 }
             });
             $("#HPCC_PageContent_txtPassword2").blur(function () {
                 if ($("#HPCC_PageContent_txtPassword2").val() != $("#HPCC_PageContent_txtPassword").val()) {
                     $("#Password2_check").text("两次输入的密码不一致!");
                 }
                 else {
                     $("#Password2_check").text("");
                 }
             });
             $("#HPCC_PageContent_txtTrueName").blur(function () {
                 if ($("#HPCC_PageContent_txtTrueName").val() =="") {
                     $("#TrueName_check").text("必须输入真实姓名!");
                 }
                 else {
                     $("#TrueName_check").text("");
                 }
             });
             $("#HPCC_PageContent_btn_Submit").click(function (e) {
                 $(":input[type=text]").blur();
                 var arr = new Array();
                 $(".error").each(function (key, value) {
                     arr[key] = $(value).text();
                     if (arr[key] != "") {
                         alert("有错误信息存在,请处理之后再提交!");
                         e.preventDefault();
                         return false;
                     }
                 });
             });

           });
       

    </script>
</asp:Content>
<asp:Content  ContentPlaceHolderID="PageContent" runat="server">
<div id="Top">

</div>
<div id="content">
    <table width="800px" id="Reg" runat="server" >
        <tr>
            <td>
                用户名(只能是英文或数字):
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><span class="error" id="UserName_check">长度为3到16位</span>
            </td>
        </tr>
        <tr>
            <td>
                真实姓名:
            </td>
            <td>
                <asp:TextBox ID="txtTrueName" runat="server"></asp:TextBox><span class="error" id="TrueName_check"></span>
            </td>
        </tr>
        <tr>
            <td>
                密码:
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                确认密码:
            </td>
            <td>
                <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox><span class="error" id="Password2_check"></span>
            </td>
        </tr>
        <tr>
            <td>
                邮箱:
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> <span class="error" id="Email_check"></span>
            </td>
        </tr>
        <tr>
            <td>
                手机号码:
            </td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox> <span class="error" id="Telephone_check"></span>
            </td>
        </tr>
     </table>
     <table id="App" runat="server">
     <tr><td>所在学院:</td><td>  <asp:DropDownList ID="DDLXueYuan" runat="server">
                                    <asp:ListItem>文学院</asp:ListItem>
                                    <asp:ListItem>外国语学院</asp:ListItem>
                                    <asp:ListItem>社会学院</asp:ListItem>
                                    <asp:ListItem>政法学院</asp:ListItem>
                                    <asp:ListItem>音乐学院</asp:ListItem>
                                    <asp:ListItem>体育学院</asp:ListItem>
                                    <asp:ListItem>数学计算机科学学院</asp:ListItem>
                                    <asp:ListItem>物理与电子信息学院</asp:ListItem>
                                    <asp:ListItem>化学与材料科学学院</asp:ListItem>
                                    <asp:ListItem>生命科学学院</asp:ListItem>
                                    <asp:ListItem>国土资源与旅游学院</asp:ListItem>
                                    <asp:ListItem>教育科学学院</asp:ListItem>
                                    <asp:ListItem>环境科学与工程学院</asp:ListItem>
                                    <asp:ListItem>美术学院</asp:ListItem>
                                    <asp:ListItem>经济管理学院</asp:ListItem>
                                    <asp:ListItem>传媒学院</asp:ListItem>
                                </asp:DropDownList></td></tr>
                                <tr><td>申请目的:</td><td>
            <asp:TextBox ID="txtApp_Purpose" runat="server" TextMode="MultiLine" CssClass="txtarea"></asp:TextBox></td></tr>
            <tr><td>申请使用时间:</td><td>
                <asp:TextBox ID="txtApp_TimeLength" runat="server"></asp:TextBox></td></tr>
                <tr><td>使用时所需软件:</td><td>
                    <asp:TextBox ID="txtApp_Software" runat="server"  TextMode="MultiLine" CssClass="txtarea"></asp:TextBox></td></tr>
                    <tr><td>备注:</td><td>
                        <asp:TextBox ID="txtRemarks" runat="server"  TextMode="MultiLine" CssClass="txtarea"></asp:TextBox></td></tr>
                        </table>
                        
                        <table>
        <tr>
        
           <td>
              
           </td>
           <td ><asp:Button ID="btn_Submit" runat="server" Text="提交" class="inputBtn register" 
                   OnClientClick="return confirm('您确定信息填写正确吗?');" 
                   onclick="btn_Submit_Click"  />
              
                  
           </td>
       </tr>
    </table>
</div>
</asp:Content>
