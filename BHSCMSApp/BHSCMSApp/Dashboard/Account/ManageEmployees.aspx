﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="ManageEmployees.aspx.cs" Inherits="BHSCMSApp.Dashboard.ManageEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


      <h4>List of employees registered in the system:</h4>
    <hr />
            <div style="width: 90%; margin-right: 5%; margin-left: 5%; text-align: center">
       
           
            <%--<p style="text-align: center;">Demo by Priya Darshini - Tutorial @ <a href="http://www.programming-free.com/2013/09/gridview-crud-bootstrap-modal-popup.html">Programmingfree</a></p>--%>
            
                
           
                    <asp:GridView ID="GridView1" runat="server" Width="100%" HorizontalAlign="Center"
                        AutoGenerateColumns="false" AllowPaging="true" OnRowDataBound="GridView1_RowDataBound"
                        DataKeyNames="UserID" CssClass="table table-hover table-striped">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:HyperLink ID="DetailsLink" runat="server" Text="Details"></asp:HyperLink>
                                </ItemTemplate>                               
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>                                     
                                    <asp:HyperLink ID="EditLink" runat="server" Text="Edit"></asp:HyperLink>                                
                                </ItemTemplate>
                            </asp:TemplateField>     
                            <asp:TemplateField>
                                <ItemTemplate>                                     
                                    <asp:HyperLink ID="DeleteLink" runat="server" Text="Delete"></asp:HyperLink>                                
                                </ItemTemplate>
                            </asp:TemplateField>                           
                            
                            <asp:BoundField DataField="UserID" HeaderText="UserID" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                            <asp:BoundField DataField="Name" HeaderText="Role" />
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="btnAdd" runat="server" Text="Add New Employee" CssClass="btn btn-info" OnClick="btnAdd_Click" />
              


            </div>

</asp:Content>