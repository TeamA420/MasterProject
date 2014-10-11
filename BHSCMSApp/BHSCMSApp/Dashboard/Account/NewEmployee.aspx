<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="NewEmployee.aspx.cs" Inherits="BHSCMSApp.Dashboard.Register.NewEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="table">
        <tr>
            <td>EmpID: 
                <asp:TextBox ID="txtEmpID" runat="server" CssClass="form-control"/>
                <asp:RequiredFieldValidator ID="EmpIDValidate" runat="server" CssClass="text-danger" 
                    ErrorMessage="The Employee ID is required" ControlToValidate="txtEmpID" />
            </td>
        </tr>

        <tr>
            <td>Role : 
                <asp:DropDownList ID="ddrole" runat="server" CssClass="form-control" Width="15%">
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Employee</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RoleValidate" runat="server" CssClass="text-danger"
                    ErrorMessage="The Employee role is required"  ControlToValidate="ddrole"/>
            </td>
        </tr>
        <tr>
            <td>Last Name : 
                <asp:TextBox ID="txtLast" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="LastNameValidate" runat="server" CssClass="text-danger"
                    ErrorMessage="The Last Name is required." ControlToValidate="txtLast" />
            </td>
        </tr>
        <tr>
            <td>First Name : 
                <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FirstNameValidate" runat="server" CssClass="text-danger"
                  ErrorMessage="The First name is required" ControlToValidate="txtFirst" />
            </td>
            
        </tr>                            
        <tr>
            <td>Username : 
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="UserNameValidate" runat="server" CssClass="text-danger"
                    ErrorMessage="A Username is required" ControlToValidate="txtUsername" />
            </td>
        </tr>
        <tr>
            <td>Password : 
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordValidate" runat="server" CssClass="text-danger"
                    ErrorMessage="A password is required." ControlToValidate="txtPassword" />
            </td>
        </tr>
        <tr>
            <td>Primary Email:
                <asp:TextBox ID="txtPriEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ID="PriEmailValidate" ErrorMessage="A valid email is required." runat="server" CssClass="text-danger" ControlToValidate="txtPriEmail" />
            </td>
        </tr>
        <tr>
            <td>Secondary Email:
                <asp:TextBox ID="txtSecEmail" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ControlToValidate="txtSecEmail" runat="server" CssClass="text-danger" ID="SecEmailValidate" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Submit" CssClass="btn btn-info" OnClick="btnAdd_Click" />
            </td>
        </tr>
                                           
            </table>
        <br />
    <br />
</asp:Content>
