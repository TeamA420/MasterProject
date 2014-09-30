<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="DetailsVendor.aspx.cs" Inherits="BHSCMSApp.Dashboard.Register.DetailsVendor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover" BackColor="White" ForeColor="Black" FieldHeaderStyle-Wrap="true" FieldHeaderStyle-Font-Bold="true" FieldHeaderStyle-BackColor="#DFD4F4" FieldHeaderStyle-ForeColor="Black" BorderStyle="Groove" AutoGenerateRows="False">
                                <Fields>                                    
                                    
                                    <asp:BoundField DataField="VendorID" HeaderText="VendorID"/>
                                    <asp:BoundField DataField="CompanyName" HeaderText="Company" />
                                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
                                    <asp:BoundField DataField="FaxNumber" HeaderText="Fax Number" />
                                    <asp:BoundField DataField="AddressLine1" HeaderText="AddressLine1" />
                                    <asp:BoundField DataField="AddressLine2" HeaderText="AddressLine2" />
                                    <asp:BoundField DataField="City" HeaderText="City" />
                                    <asp:BoundField DataField="State" HeaderText="State" />
                                    <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                    <asp:BoundField DataField="TaxID" HeaderText="TaxID" />
                                    <asp:BoundField DataField="RegistrationDate" HeaderText="RegistrationDate" />

                                    
                                    <asp:BoundField DataField="UserID" HeaderText="UserID" />
                                    <asp:BoundField DataField="UserName" HeaderText="Username" />
                                    <asp:BoundField DataField="Password" HeaderText="Password" />
                                    <asp:BoundField DataField="PrimaryEmail" HeaderText="Primary Email" />
                                    <asp:BoundField DataField="SecondaryEmail" HeaderText="Secondary Email" />
                                    
                                </Fields>
                            </asp:DetailsView>

    <br />
    <br />
    <br />
</asp:Content>
