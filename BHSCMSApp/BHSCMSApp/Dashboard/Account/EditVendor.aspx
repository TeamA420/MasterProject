<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="EditVendor.aspx.cs" Inherits="BHSCMSApp.Dashboard.Register.EditVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <div class="row" style="background-color:white; width:100%">
        <div class="col-md-6">
            <h5>Vendor Information</h5>
                <table class="table" style="border:none; outline:none; margin-left:20px; border-radius:4px">
                               <%-- <tr class="info">
                                    <td>VendorID: 
                            <asp:Label ID="lblVendorID" runat="server" ></asp:Label>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>UserID: 
                            <asp:Label ID="lblUserID" runat="server"></asp:Label>
                                    </td>
                                </tr>--%>

                                 <tr>
                                    <td>Company : 
                                <asp:TextBox ID="txtCompany" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                              <tr>
                                    <td>Phone Number : 
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>Fax Number: 
                                <asp:TextBox ID="txtFax" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr> 
                                
                                 <tr>
                                    <td>Address Line 1 : 
                                <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                              <tr>
                                    <td>Address Line 2 : 
                                <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>City: 
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr> 
                                 <tr>
                                    <td>State : 
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                              <tr>
                                    <td>ZipCode : 
                                <asp:TextBox ID="txtZipCode" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>Status: 
                                <asp:TextBox ID="txtStatus" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr> 
                                 <tr>
                                    <td>TaxID : 
                                <asp:TextBox ID="txtTaxID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>                         
                                           
                            </table>
            </div>

                  <div class="col-md-6">
                      <h5>Account Information</h5>
                      <table>
            
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
                              <td><br />  <asp:Button ID="btnAdd" runat="server" Text="Save Changes" CssClass="btn btn-info" OnClick="btnAdd_Click" /></td>
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
