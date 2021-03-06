﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHSCMSApp.Dashboard
{
    public partial class ManageVendors : System.Web.UI.Page
    {
        DataTable dt;//DataTable use to store retrieved data

        private SysUser u = new SysUser();//instantiate a new user from User Class

        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();//calls this method to get data for grid
        }

        private void BindGrid()
        {
            try
            {
                //Fetch data from BHSCMS database
                string connString = ConfigurationManager.ConnectionStrings["BHSCMS"].ConnectionString;
                SqlConnection conn = new SqlConnection(connString);

                conn.Open();

                string cmd = "Select * from BHSCMS.dbo.VendorTable V join BHSCMS.dbo.SysUserTable S ON V.UserID=S.UserID";
                SqlDataAdapter adapter = new SqlDataAdapter(cmd, conn);


                DataSet ds = new DataSet();
                adapter.Fill(ds);
                dt = ds.Tables[0];
                //Bind the fetched data to gridview
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
            catch (Exception e)
            {
                //System.Console.Error.Write(e.Message);

            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                int userID = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "UserID"));//gets the userID from the row clicked on grid

                HyperLink details = (HyperLink)e.Row.FindControl("DetailsLink");
                details.NavigateUrl = String.Format("/Dashboard/Account/DetailsVendor.aspx?userid={0}", userID);//

                HyperLink edit = (HyperLink)e.Row.FindControl("EditLink");
                edit.NavigateUrl = String.Format("/Dashboard/Account/EditVendor.aspx?userid={0}", userID);//

            }
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("/Dashboard/Account/NewVendor.aspx");
        }
             


    }
}