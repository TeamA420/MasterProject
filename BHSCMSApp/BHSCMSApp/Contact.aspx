<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="BHSCMSApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <h3 class="headers">Contact Us</h3> 

    

        <table>
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
    <hr />
    <h5>Address:</h5>
    <address>
        Baptist Health<br />
        2701 Eastpoint Parkway <br />
        Our main phone number: (502) 896-5000
    </address>
     <h5>Email:</h5>
    <address>
        <strong>Web Master:</strong>   <a href="mailto:annia.martinez@louisville.edu">webmaster@baptisthealth.com</a><br />
        <strong>Support:</strong> <a href="mailto:Marketing@example.com">support@baptisthealth.com</a>
    </address>



</asp:Content>
