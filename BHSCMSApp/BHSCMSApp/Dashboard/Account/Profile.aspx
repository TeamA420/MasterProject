<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/DashboardAdmin.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BHSCMSApp.Dashboard.Account.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
					   <div class="row" style="background-color:white; width:100%">
          <div class="col-md-12">
              <br />

					
						<fieldset>
							<legend>Edit Your Profile</legend>

                            <div class="control-group">
								<label class="control-label" for="input01">Employee ID</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="empID"/>
								</div>
							</div>


							<div class="control-group">
								<label class="control-label" for="input01">First Name</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="fname"/>
								</div>
							</div>

                            <div class="control-group">
								<label class="control-label" for="input01">Last Name</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="lname"/>
								</div>
							</div>

                            <div class="control-group">
								<label class="control-label" for="input01">UserName</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="username"/>
								</div>
							</div>

                            <div class="control-group">
								<label class="control-label" for="input01">Password</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="password"/>
								</div>
							</div>
							
							<div class="control-group">
								<label class="control-label" for="input01">Primary Email</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="priEmail"/>
								</div>
							</div>

                            <div class="control-group">
								<label class="control-label" for="input01">Secondary Email</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="secEmail"/>
								</div>
							</div>
								
                           <br />		
							
											
							<div class="form-actions">
								<button type="submit" class="btn btn-info">Save Changes</button> <button class="btn">Cancel</button>
							</div>



                            </fieldset>



   
                        <br />
                   </div>
       
         </div>
     <br />
    <br />   
    <br />
    <br /> 
</asp:Content>
