﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BHSCMSApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     

    <div class="row">

     <div class="col-md-4"  style="height:600px">
         <h3 class="headers">Contact Us</h3> 
          <hr />
         <p>Please complete the form below.</p>
         
         <br />
        <table style="margin-left:20px">
            <!-- Name -->
            <tr>
                <td >
                    Name:</td>
                <td >
                    <asp:TextBox ID="txtName" runat="server" Columns="40" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ValidationGroup="contact"
                                CssClass="text-danger" ErrorMessage="Please enter your name." />
                </td>
            </tr>


            <tr>
                <td >
                    Email:</td>
                <td >
                    <asp:TextBox ID="txtEmail" runat="server" Columns="40" CssClass="form-control"></asp:TextBox>
                     <asp:RegularExpressionValidator runat="server" CssClass="text-danger" ValidationGroup="contact"
                     ErrorMessage="Invalid Email" ControlToValidate="txtEmail" SetFocusOnError="True" 
                         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>

            
            <!-- Subject -->
            <tr>
                <td >
                    Subject:
                </td>
                <td>
                    <asp:DropDownList ID="ddlSubject" runat="server" CssClass="form-control">
                        <asp:ListItem>Ask a question</asp:ListItem>
                        <asp:ListItem>Report a bug</asp:ListItem>
                        <asp:ListItem>Customer support ticket</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
 
            <!-- Message -->
            <tr>
                <td >
                    Message:
                </td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" Columns="40" Rows="5" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMessage" ValidationGroup="contact" CssClass="text-danger" ErrorMessage="Please enter your message." />
                </td>
            </tr>
 
            <!-- Submit -->
            <tr >
                <td colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Send Message" ValidationGroup="contact" CssClass="btn btn-info" OnClick="btnSubmit_Click"/>
                </td>
            </tr>
         
            <!-- Results -->
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblResult" runat="server" CssClass="text-danger"></asp:Label>
                </td>
            </tr>
        </table>
         <br />
         <br />
         </div>


        <div class="col-md-4"  style="height:600px">
                  <br />
    <h4>Were are we?</h4>
                 <br />
                 <p>We are located in:</p>
                 <address>
        
        4000 Kresge Way <br />
        Louisville, KY 40207<br />
        
    </address>
<iframe style="margin-right:30px" width="400" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Baptist+Health+Louisville,+Kresge+Way,+Louisville,+KY&amp;aq=0&amp;oq=baptist+&amp;sll=38.214274,-85.760586&amp;sspn=0.020231,0.052314&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=38.238477,-85.640514&amp;spn=0.006295,0.006295&amp;t=m&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Baptist+Health+Louisville,+Kresge+Way,+Louisville,+KY&amp;aq=0&amp;oq=baptist+&amp;sll=38.214274,-85.760586&amp;sspn=0.020231,0.052314&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=38.238477,-85.640514&amp;spn=0.006295,0.006295&amp;t=m" style="color:#0000FF;text-align:left">View Larger Map</a></small>
    </div>
             







         <div class="col-md-4"  style="height:600px">
   
    <br />
    
     <h5>Email Address:</h5>
    <address>
        <strong>Web Master:</strong>   <a href="mailto:annia.martinez@louisville.edu">webmaster@baptisthealth.com</a><br />
        <strong>Support:</strong> <a href="mailto:Marketing@example.com">support@baptisthealth.com</a><br />
        Our main phone number: (502) 896-5000
    </address>
             </div>


             
             

    </div>
</asp:Content>
