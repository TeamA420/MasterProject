<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.cs" Inherits="BHSCMSApp.Dashboard.Register.EditEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h5>Edit Employee Information:</h5>
    <table class="table" style="border:none; border-radius:4px">
                                <tr>
                                    <td>EmpID:                                         
                            <asp:TextBox ReadOnly="true" ID="lblEmpID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                            <asp:TextBox ID="lblUserID" runat="server" ReadOnly="true" Visible="false" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>

                                 <tr>
                                    <td>Role : 
                                        <asp:DropDownList ID="ddrole" runat="server" CssClass="form-control" Width="15%">
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>Employee</asp:ListItem>
                                        </asp:DropDownList>                                
                                    </td>
                                </tr>
                              <tr>
                                    <td>Last Name : 
                                <asp:TextBox ID="txtLast" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>First Name : 
                                <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr> 
                                   
                               <tr>
                                    <td>Username : 
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Password : 
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Primary Email:
                                <asp:TextBox ID="txtPriEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Secondary Email:
                                <asp:TextBox ID="txtSecEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                <asp:Button runat="server" Text="Save Changes" CssClass="btn btn-info" />
                                    </td>
                                </tr>           
                            </table>


             
   
    <br />
     <br />
    <br />





   

</asp:Content>
