using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BHSCMSApp.Controls
{
    public partial class UserInfoBoxControl : System.Web.UI.UserControl
    {
        private static string userName;        
        private static string userRole;
        private static int roleid;
        private static int userID;
        private static string lastLogin;
        SysUser u = new SysUser();

        

        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink logout = (HyperLink)FindControl("LogOut");
            logout.NavigateUrl = "~/Default.aspx";

            UserName = Request.QueryString["u"];
            RoleID = Convert.ToInt32(Request.QueryString["r"]);
            UserID = u.GetUserIDbyUserName(UserName);

            GetUserInfo();

           if(!IsPostBack)
           {
               GetUserInfo();
           }

        }
        
        public void GetUserInfo()
        {
            UserName = Request.QueryString["u"];
            RoleID = Convert.ToInt32(Request.QueryString["r"]);
            UserID = u.GetUserIDbyUserName(UserName);

            LastLogin = u.LoginDate(UserID);

            switch (RoleID)
            {
                case 1:
                    UserRole = "Administrator";
                    break;
                case 2:
                    UserRole = "Employee";
                    break;
                case 3:
                    UserRole = "Vendor";
                    break;
                default:
                    UserRole = "Unknown";                    
                    break;
            }

        }

        public string UserName
        {                    
            get { return userName; }
            set { userName = value; }
        }


        //public string UserName
        //{
        //    get
        //    {
        //        if (ViewState["u"] == null)
        //            return int.MinValue.ToString();
        //        else
        //            return (string)ViewState["u"];
        //    }
        //    set { ViewState["u"] = value; }
        //}

        public int UserID
        {
            get { return userID; }
            set { userID = value; }
        }


        public int RoleID
        {
            get
            {
                if (ViewState["roleid"] == null)
                    return int.MinValue;
                else
                    return (int)ViewState["roleid"];
            }
            set { ViewState["roleid"] = value; }
        }

        public string UserRole
        {
            get { return userRole; }
            set { userRole = value; }
        }


        public string LastLogin
        {
            get { return lastLogin; }
            set { lastLogin = value; }
        }
    }
}