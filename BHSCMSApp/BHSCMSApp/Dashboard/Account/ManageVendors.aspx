<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="ManageVendors.aspx.cs" Inherits="BHSCMSApp.Dashboard.ManageVendors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="row" style="background-color:white; width:100%; height:320px">
          <div class="col-md-12">
              <br />
    

      <h4>List of vendors registered in the system:</h4>
    <hr />
       
           
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
                                                      
                            <asp:BoundField DataField="CompanyName" HeaderText="Company"/>
                            <asp:BoundField DataField="State" HeaderText="State"/>
                            <asp:BoundField DataField="Status" HeaderText="Status"/>
                             <asp:BoundField DataField="UserID" HeaderText="UserID"/>
                            <asp:BoundField DataField="UserName" HeaderText="UserName"/>
                        </Columns>
                    </asp:GridView>
                    <asp:Button ID="btnAdd" runat="server" Text="Add New Vendor" CssClass="btn btn-info" OnClick="btnAdd_Click" />
              


            </div>
              
                </div>
       
         </div>
     <br />
    <br />   
    <br />
    <br /> 
</asp:Content>
