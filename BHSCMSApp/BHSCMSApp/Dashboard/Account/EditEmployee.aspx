﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.cs" Inherits="BHSCMSApp.Dashboard.Register.EditEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
      <div class="row" style="background-color:white; width:100%">
          <div class="col-md-12">
         
    
    <h4 style="margin-left:20px">Edit Employee Information:</h4>
    <table class="table" style="border:none; outline:none; margin-left:20px; border-radius:4px">
                                <tr>
                                    <td>EmpID:                                         
                                        <asp:TextBox ReadOnly="true" ID="lblEmpID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>UserID:
                                        <asp:TextBox ID="lblUserID" runat="server" ReadOnly="true" Visible="true" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>

                                 <tr>
                                    <td>Role : 
                                        <asp:DropDownList ID="ddrole" runat="server" CssClass="form-control" Width="15%">
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>Employee</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="validRole" runat="server" CssClass="text-danger" ControlToValidate="ddrole" 
                                             ErrorMessage="A role is required" />                                
                                    </td>
                                </tr>
                              <tr>
                                    <td>Last Name : 
                                        <asp:TextBox ID="txtLast" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="validLastName" runat="server" ControlToValidate="txtLast" CssClass="text-danger"
                                             ErrorMessage="A last name is required." />
                                    </td>
                                </tr>
                                 <tr>
                                    <td>First Name : 
                                        <asp:TextBox ID="txtFirst" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="validFirstName" runat="server" ControlToValidate="txtFirst" CssClass="text-danger"
                                             ErrorMessage="A first name is required." />
                                    </td>
                                </tr> 
                                   
                               <tr>
                                    <td>Username : 
                                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="validUsername" runat="server" ControlToValidate="txtUsername" CssClass="text-danger" 
                                             ErrorMessage="A username is required." />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Password : 
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="validPassword" runat="server" ControlToValidate="txtPassword" CssClass="text-danger" 
                                             ErrorMessage="A password is required" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Primary Email:
                                        <asp:TextBox ID="txtPriEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="validPriEmail" runat="server" ControlToValidate="txtPriEmail" CssClass="text-danger"
                                             ErrorMessage="A Primary Email is required." />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Secondary Email:
                                        <asp:TextBox ID="txtSecEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button runat="server" ID="btnSave" Text="Save Changes" CssClass="btn btn-info"  OnClick="btnSave_Click" />
                                    </td>
                                </tr>           
                            </table>


             
                        <br />
                   </div>
       
         </div>
     <br />
    <br />   
    <br />
    <br /> 
</asp:Content>
