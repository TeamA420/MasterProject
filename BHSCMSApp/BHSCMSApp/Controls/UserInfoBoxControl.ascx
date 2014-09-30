<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserInfoBoxControl.ascx.cs" Inherits="BHSCMSApp.Controls.UserInfoBoxControl" %>

<div style="float:right; text-align:right" class="userControl">
   
    <b style="color:#009DBD">Welcome back <%= this.UserName %>!!!</b>

<br />
<b style="font-size:small">You are logged in as <%=this.UserRole %></b>
<br />
<b style="font-size:smaller">Last login on <%=this.LastLogin %></b>
 <br />
<asp:HyperLink runat="server" ID="LogOut"><b style="color:#009DBD">Log Out</b></asp:HyperLink>


</div>

