using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHSCMSApp.Dashboard.Register
{
    public partial class EditEmployee : System.Web.UI.Page
    {
        
        private int _userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            _userID = Convert.ToInt32(Request.QueryString["userID"]);//gets and convert to int the userid passed in the querystring
            if(!IsPostBack)
            {
                BindGrid();//calls this method to get data for grid      
            }
            



        }

        private void BindGrid()
        {
            try
            {
                //Fetch data from BHSCMS database
                string connString = ConfigurationManager.ConnectionStrings["BHSCMS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);

                conn.Open();

                //string cmd = String.Format("Select E.EmpID, E.LastName, E.FirstName, R.Name, U.UserID, U.UserName, U.Password, U.PrimaryEmail, U.SecondaryEmail from BHSCMS.dbo.EmployeeTable E join BHSCMS.dbo.SysUserTable U on e.UserID=u.UserID join BHSCMS.dbo.RoleTable R on E.RoleID=u.UserID Where u.UserID={0}", _userID);
                
                SqlCommand command = new SqlCommand(String.Format("Select E.EmpID, E.LastName, E.FirstName, R.ID, U.UserID, U.UserName, U.Password, U.PrimaryEmail, U.SecondaryEmail from BHSCMS.dbo.EmployeeTable E join BHSCMS.dbo.SysUserTable U on e.UserID=u.UserID join BHSCMS.dbo.RoleTable R on R.ID=u.RoleID Where u.UserID={0}", _userID),conn);

                 SqlDataReader reader = command.ExecuteReader();

                 while (reader.Read())
                 {
                     this.lblEmpID.Text = reader["EmpID"].ToString();
                     this.lblUserID.Text = reader["UserID"].ToString();
                     this.ddrole.SelectedIndex = (Convert.ToInt32(reader["ID"])-1);
                     this.txtLast.Text = reader["LastName"].ToString();
                     this.txtFirst.Text = reader["FirstName"].ToString();
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["BHSCMS"].ConnectionString;

            string empID = lblEmpID.Text;
            int role = ddrole.SelectedIndex + 1;
            string lastName = txtLast.Text;
            string firstName = txtFirst.Text;
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string priEmail = txtPriEmail.Text;
            string secEmail = (string.IsNullOrEmpty(txtSecEmail.Text))? string.Empty : txtSecEmail.Text;

            string updateQry = "UPDATE [BHSCMS].[dbo].[SysUserTable] SET UserName = @username, Password = @password, PrimaryEmail = @priEmail, SecondaryEmail = @secEmail WHERE UserID = @empID";
            string updateQryEmp = "UPDATE [BHSCMS].[dbo].[EmployeeTable] SET LastName = @lastname, FirstName = @firstname, RoleID = @roleID WHERE UserID = @empID";

            if(validRole.IsValid && validLastName.IsValid && validFirstName.IsValid && validUsername.IsValid && validPassword.IsValid && validPriEmail.IsValid)
            {
                using(SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    using(SqlCommand com = new SqlCommand(updateQry,con))
                    {
                        com.Parameters.AddWithValue("@username", username);
                        com.Parameters.AddWithValue("@password", password);
                        com.Parameters.AddWithValue("@priEmail", priEmail);
                        com.Parameters.AddWithValue("@secEmail", secEmail);
                        com.Parameters.AddWithValue("@empID", empID);
                        com.ExecuteNonQuery();
                        
                    }
                    using(SqlCommand com = new SqlCommand(updateQryEmp,con))
                    {
                        com.Parameters.AddWithValue("@lastname", lastName);
                        com.Parameters.AddWithValue("@firstname",firstName);
                        com.Parameters.AddWithValue("@roleID", role);
                        com.Parameters.AddWithValue("@empID",empID);
                        com.ExecuteNonQuery();
                    }
                }

            }


        }
    }
}