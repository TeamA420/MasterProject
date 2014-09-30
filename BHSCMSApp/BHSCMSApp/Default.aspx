<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BHSCMSApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
   <br />
    <div class="content">
   <%-- <div class="jumbotron">

    </div>--%>

    <div class="row">
        <div class="col-md-8"  style="background-color:#EBEBE6; border-radius:4px">
            <h3>Welcome to our page</h3>
            <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </p>
            <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
            </p>
            
        </div>
        <div class="col-md-1" >
            
        </div>
        <div class="col-md-3" style="background-color:#D3DEB5; border-radius:4px; border-bottom:solid 2px; border-right:solid 2px; border-color:#7E7E74" >
        <section id="loginForm">
                <div class="form-horizontal">
                    <h5>Enter credentials to access the system</h5>
                    
                      <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-4 control-label">User name:</asp:Label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                CssClass="text-danger" ErrorMessage="The user name field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-4 control-label">Password:</asp:Label>
                        <div class="col-md-8">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-8">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-8">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p  style="font-size:small">
                    
                    Click <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">here</asp:HyperLink>
                    if you are a new Vendor.
                </p>
            </section>

             </div>
          
            <br />
             <br />
             <br />
            
            <div class="row">
             <div class="col-md-8"></div>
              <div class="col-md-1"></div>
             <div class="col-md-3" style="background-color:#F7DED3; border-radius:4px; border-bottom:solid 2px; border-right:solid 2px; border-color:#7E7E74" >
            <h5>Notification Area:</h5>
            <p>The system will be down doing updates every Friday from 1:00 A.M to 3:00 A.M</p>
            <p>Read the last version of our Terms and conditions <a runat="server" href="~/Account/Login">here</a></p>
        </div>
            </div>

       
    </div>
    </div>
</asp:Content>
