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
    public class Employee : SysUser
    {
        //private int _empID;
        //private string _lastName;
        //private string _firstName;


        public Employee()
        {

        }


        public void RegisterEmployee(int EmpID, int userID, string lastName, string firstName, int roleId)
        {           

            string connectionString = GetConnectionString();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string insertQry = "Insert into [BHSCMS].[dbo].[EmployeeTable] (EmpID, UserID, LastName, FirstName, RoleID) values (@empid,@userid,@lastname,@firstname,@roleid)";
                SqlCommand command = new SqlCommand(insertQry, connection);
                command.Parameters.AddWithValue("@empid", EmpID);
                command.Parameters.AddWithValue("@userID", userID);
                command.Parameters.AddWithValue("@lastname", lastName);
                command.Parameters.AddWithValue("@firstname", firstName);
                command.Parameters.AddWithValue("@roleid", roleId);

                command.ExecuteNonQuery();
                connection.Close();

            }
            
        }        
    }
}