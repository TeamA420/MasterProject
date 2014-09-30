using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using BHSCMSApp.Models;

namespace BHSCMSApp.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            Vendor v = new Vendor();
            //instantiate a new vendor from Vendor Class

            //variables used to create the new vendor
            #region            
            string company = CompanyName.Text;
            string phone = PhoneNumber.Text;
            string fax = FaxNumber.Text;
            string address1 = Address.Text;
            string address2 = Address2.Text;
            string city = City.Text;
            string state = ddState.SelectedItem.Text;
            string zipcode = Zipcode.Text;
            DateTime regDate = DateTime.Today;
            int taxid = Convert.ToInt32(TaxID.Text);
            string username = UserName.Text;
            string password = Password.Text;
            string priEmail = Email.Text;
            string secEmail = AltEmail.Text;
            int roleid = 3;//vendor role is number 3               
            #endregion

           
            if (IsValid)
            {
                v.RegisterUser(username, password, priEmail, secEmail, roleid);

                int userid = v.GetLastUserIDinserted();//gets the user id from the sysusertable

                v.RegisterVendor(company, userid, phone, fax, address1, address2, city, state, zipcode, 2, regDate, taxid);               

                Page.Response.Redirect("../Default.aspx");          
                

                //IdentityHelper.SignIn(manager, user, isPersistent: false);
                //IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }

            //else 
            //{
            //    ErrorMessage.Text = result.Errors.FirstOrDefault();
            //}
        }
    }
}