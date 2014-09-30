using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using BHSCMSApp;

namespace BHSCMSApp
{
    public class Vendor: SysUser
    {
        public Vendor()
        {

        }

        //Updates changes made to Vendor profile in VendorTable
        public void UpdateVendor(int userid, string company, string phone, string fax, string address1, string address2, string city, string state, string zipcode, int status, int taxid)
        {           
            string connectionString = GetConnectionString();
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string updateQry = string.Format("update VendorTable set CompanyName=@company, PhoneNumber=@phone, FaxNumber=@fax, AddressLine1=@address1, AddressLine2=@address2, City=@city, State=@state, ZipCode=@zipcode, Status=@status, TaxID=@taxid where UserID={0}", userid);

                    SqlCommand updateCmd = new SqlCommand(updateQry, connection);

                    updateCmd.Parameters.AddWithValue("@company", company);                   
                    updateCmd.Parameters.AddWithValue("@phone", phone);
                    updateCmd.Parameters.AddWithValue("@fax", fax);
                    updateCmd.Parameters.AddWithValue("@address1", address1);
                    updateCmd.Parameters.AddWithValue("@address2", address2);
                    updateCmd.Parameters.AddWithValue("@city", city);
                    updateCmd.Parameters.AddWithValue("@state", state);
                    updateCmd.Parameters.AddWithValue("@zipcode", zipcode);
                    updateCmd.Parameters.AddWithValue("@status", status);
                    updateCmd.Parameters.AddWithValue("@taxid", taxid);

                    

                    updateCmd.ExecuteNonQuery();
                    connection.Close();
                }
            }
            catch (Exception e)
            {
                //System.Console.Error.Write(e.Message);

            }
            
            
        }

        //Register new Vendor in VendorTable
        public void RegisterVendor(string company, int userid, string phone, string fax, string address1, string address2, string city, string state, string zipcode, int status, DateTime registrationDate, int taxid)
        {
            string connectionString = GetConnectionString();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string insertQry = "Insert into [BHSCMS].[dbo].[VendorTable] (CompanyName, UserID, PhoneNumber, FaxNumber,AddressLine1,AddressLine2,City,State,ZipCode,Status,RegistrationDate,TaxID) values (@company, @userid, @phone, @fax, @address1, @address2, @city, @state, @zipcode, @status, @regDate, @taxid)";
                    SqlCommand command = new SqlCommand(insertQry, connection);
                    command.Parameters.AddWithValue("@company", company);
                    command.Parameters.AddWithValue("@userid", userid);
                    command.Parameters.AddWithValue("@phone", phone);
                    command.Parameters.AddWithValue("@fax", fax);
                    command.Parameters.AddWithValue("@address1", address1);
                    command.Parameters.AddWithValue("@address2", address2);
                    command.Parameters.AddWithValue("@city", city);
                    command.Parameters.AddWithValue("@state", state);
                    command.Parameters.AddWithValue("@zipcode", zipcode);
                    command.Parameters.AddWithValue("@status", status);
                    command.Parameters.AddWithValue("@regDate", registrationDate);
                    command.Parameters.AddWithValue("@taxid", taxid);

                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }

            catch (Exception e)
            {
                //System.Console.Error.Write(e.Message);

            }

            
        }

    }
}