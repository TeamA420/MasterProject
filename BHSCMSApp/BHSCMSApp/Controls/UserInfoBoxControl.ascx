<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserInfoBoxControl.ascx.cs" Inherits="BHSCMSApp.Controls.UserInfoBoxControl" %>

<div style="float:right; text-align:right" class="userControl">
   
    <asp:label runat="server" style="color:#17649A; font-weight:bold">Welcome back <%= this.UserName %>!!!</asp:label>

<br />
<b style="font-size:small">You are logged in as <%=this.UserRole %></b>
<br />
<b style="font-size:smaller">Last login on <%=this.LastLogin %></b>
 <br />
<asp:HyperLink runat="server" ID="LogOut"><b style="color:#17649A">Log Out</b></asp:HyperLink>


</div>

