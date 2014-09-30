<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="BHSCMSApp.Dashboard.WebForm1" %>





<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">


          <div class="col-md-9">
              <h3>Welcome to Admin Dashboard!!!</h3>
          </div>

        <div class="col-md-3">
            <h5>Upcoming Events:</h5>
            <asp:Calendar runat="server" />

            </div>


    </div>
  
          

          




          <p></p>

    
          
       

</asp:Content>
