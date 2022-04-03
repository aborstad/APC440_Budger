using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupUI
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Method fields
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            int passwordLength = password.Length;

            // Username input validation
            if (username == string.Empty)
            {
                lblUsernameError.Text = "Please enter your username.";
                return;
            }
            else
            {
                lblUsernameError.Text = string.Empty;
            }

            // Test if an email address
            bool IsValidEmail(string email)
            {
                try
                {
                    var addr = new System.Net.Mail.MailAddress(email);
                    return addr.Address == email;
                }
                catch
                {
                    return false;
                }
            }
            if (!IsValidEmail(username))
            {
                lblUsernameError.Text = "Must be a valid email address.";
                return;
            }
            else
            {
                lblUsernameError.Text = string.Empty;
            }

            // Password input validation
            if (txtPassword.Text == string.Empty)
            {
                lblPasswordError.Text = "Must enter a password.";
                return;
            }
            else
            {
                lblPasswordError.Text = string.Empty;
            }

            Response.Redirect("Home.aspx");
        }
    }
}