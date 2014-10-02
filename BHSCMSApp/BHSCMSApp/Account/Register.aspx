<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BHSCMSApp.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <%--<h2><%: Title %>.</h2>--%>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
       
    <div class="form-horizontal">
        <hr />
        <%-- <asp:ValidationSummary runat="server" CssClass="text-danger" />--%>
        <div class="row" style="background-color:white">

        <div class="col-md-6"><%--ends first column--%> 
            <br />
        <h4>Enter Company Information</h4>        
       
        <br />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="CompanyName" CssClass="col-md-4 control-label">Company Name*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="CompanyName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CompanyName"
                    CssClass="text-danger" ErrorMessage="The company name field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="PhoneNumber" CssClass="col-md-4 control-label">Phone Number*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="PhoneNumber" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="PhoneNumber"
                    CssClass="text-danger" ErrorMessage="The phone number field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FaxNumber" CssClass="col-md-4 control-label">Fax Number</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="FaxNumber" CssClass="form-control" />                
            </div>
        </div>
        <br />
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address" CssClass="col-md-4 control-label">Address*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Address" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Address2" CssClass="col-md-4 control-label">PO Box/Suite/Apt</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Address2" CssClass="form-control" />                
            </div>
        </div>
         <br />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="City" CssClass="col-md-4 control-label">City*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="City" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="City"
                    CssClass="text-danger" ErrorMessage="The city field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddState" CssClass="col-md-4 control-label">State*</asp:Label>
            <div class="col-md-8">
                <asp:DropDownList runat="server" ID="ddState" Width="280"  CssClass="form-control">
                    <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                <asp:ListItem Value="CA">California</asp:ListItem>
	                <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                <asp:ListItem Value="FL">Florida</asp:ListItem>
	                <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                <asp:ListItem Value="ME">Maine</asp:ListItem>
	                <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                <asp:ListItem Value="MT">Montana</asp:ListItem>
	                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                <asp:ListItem Value="NY">New York</asp:ListItem>
	                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                <asp:ListItem Value="TX">Texas</asp:ListItem>
	                <asp:ListItem Value="UT">Utah</asp:ListItem>
	                <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                <asp:ListItem Value="WA">Washington</asp:ListItem>
	                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                </asp:DropDownList>                
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddState"
                    CssClass="text-danger" ErrorMessage="The state field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Zipcode" CssClass="col-md-4 control-label">Zip/Postal Code*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Zipcode" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Zipcode"
                    CssClass="text-danger" ErrorMessage="The zipcode field is required." />                
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TaxID" CssClass="col-md-4 control-label">TaxID</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="TaxID" CssClass="form-control" />                             
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Commodities"  CssClass="col-md-4 control-label">Commodities</asp:Label>
            <div class="col-md-8">
               <asp:ListBox runat="server" ID="Commodities" SelectionMode="Multiple" Width="280" CssClass="form-control">     
                <asp:ListItem>Ace Bandages</asp:ListItem>
               <asp:ListItem>Dressing change</asp:ListItem>
                <asp:ListItem>Neuro Sponges</asp:ListItem>
                </asp:ListBox>            
            </div>
        </div>


       <%-- <div class="form-group">
            <asp:Label AssociatedControlID="chkDemoList" runat="server" Cssclass="col-md-4 control-label">Categories></asp:Label>
            <div class="col-md-8">
                <asp:CheckBoxList runat="server" ID="chkDemoList" SelectionMode="Multiple" >
                    <asp:ListItem>dhsajhd</asp:ListItem>
                    <asp:ListItem>Medical</asp:ListItem>
                    <asp:ListItem>Medical</asp:ListItem>
                </asp:CheckBoxList>
                <asp:CustomValidator runat="server" ID="cvDemoList" ClientValidationFunction="ValidateDemoList" ErrorMessage="Please Select At Least One Category" ></asp:CustomValidator>
 
             </div>

        </div>--%>
 
<%--<script>
    function ValidateDemoList(source, args)
    {
      var chkListModules= document.getElementById ('<%= chkDemoList.ClientID %>');
      var chkListinputs = chkListModules.getElementsByTagName("input");
      for (var i=0;i<chkListinputs .length;i++)
      {
        if (chkListinputs [i].checked)
        {
          args.IsValid = true;
          return;
        }
      }
      args.IsValid = false;
    }

</script>--%>

         
        <%--<h4>References</h4>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RefName1" CssClass="col-md-2 control-label">Company Name 1</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RefName1" CssClass="form-control" />                             
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RefNumber1" CssClass="col-md-2 control-label">Phone Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RefNumber1" CssClass="form-control" />                             
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RefName2" CssClass="col-md-2 control-label">Company Name 2</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RefName2" CssClass="form-control" />                             
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RefNumber2" CssClass="col-md-2 control-label">Phone Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RefNumber2" CssClass="form-control" />                             
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RefName3" CssClass="col-md-2 control-label">Company Name 3</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RefName3" CssClass="form-control" />                             
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RefNumber3" CssClass="col-md-2 control-label">Phone Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="RefNumber3" CssClass="form-control" />                             
            </div>
        </div>--%>
        
       </div><%--ends first column--%>

        <div class="col-md-6"><%--starts second column--%>   
            <br />      
        <h4>Enter Account Login Information</h4>
         <br />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-md-4 control-label">User name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                    CssClass="text-danger" ErrorMessage="The user name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-4 control-label">Password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-4 control-label">Confirm password</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
         <br />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-4 control-label">Email*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email address field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="AltEmail" CssClass="col-md-4 control-label">Alternative Email*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="AltEmail" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="AltEmail"
                    CssClass="text-danger" ErrorMessage="The alternate email address field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="TaxForm" CssClass="col-md-4 control-label">Upload Tax Form*</asp:Label>
            <div class="col-md-8">
                <asp:FileUpload runat="server" ID="TaxForm" CssClass="form-control" Width="280" />
                <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="TaxForm"
                    CssClass="text-danger" ErrorMessage="The tax form is required." />--%>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RegCode" CssClass="col-md-4 control-label">Registration Code*</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="RegCode" CssClass="form-control" />
               <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="RegCode"
                    CssClass="text-danger" ErrorMessage="The alternate email address field is required." />--%>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-4 col-md-8">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-info" />
            </div>
        </div>

            <br />
             <br />
             <br />
            
            
             <br />
            
            <br />
             <br />
             <br />
              <br />
             <br />
             <br />
    </div><%--ends second column--%>
    </div><%--ends row column--%>
    </div><%--ends form column--%>
    <br />
             <br />
             <br />
     <br />
             <br />
</asp:Content>

