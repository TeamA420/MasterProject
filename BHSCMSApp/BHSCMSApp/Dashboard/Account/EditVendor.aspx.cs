#region
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
#endregion

namespace BHSCMSApp.Dashboard.Register
{
    public partial class EditVendor : System.Web.UI.Page
    {
        //declaring variables
        #region
        private int _userID;
        private string _company;
        private string _phone;
        private string _fax;
        private string _address1;
        private string _address2;
        private string _city;
        private string _state;
        private string _zipcode;
        private int _status;
        private int _taxid;
        private string _username;
        private string _password;
        private string _priEmail;
        private string _secEmail;

        #endregion
       

        protected void Page_Load(object sender, EventArgs e)
        {
            _userID = Convert.ToInt32(Request.QueryString["userID"]);//gets and convert to int the userid passed in the querystring

            BindGrid();//calls this method to get data for the fields     
        }

        private void BindGrid()
        {          

            string strSQL = "";
            try
            {
                //Fetch data from BHSCMS database
                string connString = ConfigurationManager.ConnectionStrings["BHSCMS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);

                conn.Open();


                strSQL = string.Format(FunctionsHelper.GetFileContents("SQL/UserVendorDetails.sql"), _userID);


                SqlCommand command = new SqlCommand(strSQL, conn);

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    //this.lblVendorID.Text = reader["VendorID"].ToString();
                    //this.lblUserID.Text = reader["UserID"].ToString();
                    this.txtCompany.Text = reader["CompanyName"].ToString();
                    this.txtPhone.Text = reader["PhoneNumber"].ToString();
                    this.txtFax.Text = reader["FaxNumber"].ToString();
                    this.txtAddress1.Text = reader["AddressLine1"].ToString();
                    this.txtAddress2.Text = reader["AddressLine2"].ToString();
                    this.txtCity.Text = reader["City"].ToString();
                    this.txtState.Text = reader["State"].ToString();
                    this.txtZipCode.Text = reader["ZipCode"].ToString();
                    this.txtStatus.Text = reader["Status"].ToString();
                    this.txtTaxID.Text = reader["TaxID"].ToString();
                    this.txtUsername.Text = reader["UserName"].ToString();
                    this.txtPassword.Text = reader["Password"].ToString();
                    this.txtPriEmail.Text = reader["PrimaryEmail"].ToString();
                    this.txtSecEmail.Text = reader["SecondaryEmail"].ToString();
                }



            }
            catch (Exception e)
            {
                //System.Console.Error.Write(e.Message);

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            //assigns input fields data to variables which are used to update
            #region
            _company = txtCompany.Text;
            _phone = txtPhone.Text;
            _fax = txtFax.Text;
            _address1 = txtAddress1.Text;
            _address2 = txtAddress2.Text;
            _city = txtCity.Text;
            _state = txtState.Text;
            _zipcode = txtZipCode.Text;
            _status = Convert.ToInt32(txtStatus.Text);
            _taxid = Convert.ToInt32(txtTaxID.Text);
            _username = txtUsername.Text;
            _password = txtPassword.Text;
            _priEmail = txtPriEmail.Text;
            _secEmail = txtSecEmail.Text;
            #endregion

            Vendor v = new Vendor();
            v.UpdateVendor(_userID, _company, _phone, _fax, _address1, _address2, _city, _state, _zipcode, _status, _taxid);
            v.UpdateUser(txtUsername.Text, txtPassword.Text, txtPriEmail.Text, txtSecEmail.Text, 3, _userID);
            Page.Response.Redirect("~/Dashboard/ManageVendors.aspx");
        }

       
        


    }
}