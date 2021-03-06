﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="DetailsEmployee.aspx.cs" Inherits="BHSCMSApp.Dashboard.Register.DetailsEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <div class="row" style="background-color:white; width:100%; height:450px">
          <div class="col-md-12">
      <h4>Employee Information:</h4>
     
                            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="table table-bordered table-hover" BackColor="White" ForeColor="Black" Width='70%' FieldHeaderStyle-Wrap="false" FieldHeaderStyle-Font-Bold="true"  FieldHeaderStyle-BackColor="#EEEEEE" FieldHeaderStyle-ForeColor="Black" BorderStyle="Groove" AutoGenerateRows="False">
                                <Fields>                                    
                                    
                                    <asp:BoundField DataField="EmpID" HeaderText="EmployeeID" />
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" />
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                                    <asp:BoundField DataField="Name" HeaderText="Role" />
                                    
                                    <asp:BoundField DataField="UserID" HeaderText="UserID" />
                                    <asp:BoundField DataField="UserName" HeaderText="Username" />
                                    <asp:BoundField DataField="Password" HeaderText="Password" />
                                    <asp:BoundField DataField="PrimaryEmail" HeaderText="Primary Email" />
                                    <asp:BoundField DataField="SecondaryEmail" HeaderText="Secondary Email" />
                                    
                                </Fields>
                            </asp:DetailsView>
                       <br />
                        <br />
                   </div>
       
         </div>
     <br />
    <br />   
    <br />
    <br /> 
</asp:Content>
