using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GroupUI
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Method fields
            string password = txtPassword.Text;
            string confirm = txtConfirmPassword.Text;
            string username = txtUsername.Text;
            int passwordLength = password.Length;
            SqlConnection sqlconn = null;

            // Username input validation
            if (username == string.Empty)
            {
                lblUsernameError.Text = "Must enter a valid email address.";
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
                lblUsernameError.Text = "Please enter your email address.";
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

            if (passwordLength < 6)
            {
                lblPasswordError.Text = "Password must be at least 6 characters";
                return;
            }
            else
            {
                lblPasswordError.Text = string.Empty;
            }

            if (txtConfirmPassword.Text == string.Empty)
            {
                lblConfirmPasswordError.Text = "Must re-enter password.";
                return;
            }
            else
            {
                lblConfirmPasswordError.Text = string.Empty;
            }


            // Test if passwords match
            if (!password.Equals(confirm))
            {
                lblConfirmPasswordError.Text = "Passwords must match.";
                return;
            }
            else
            {
                lblConfirmPasswordError.Text = string.Empty;
            }

            Response.Redirect("LogIn.aspx");

            try
            {
                string mainConn = ConfigurationManager.ConnectionStrings["Lab17db"].ConnectionString;
                sqlconn = new SqlConnection(mainConn);
                string sqlquery = String.Format("INSERT INTO [User] ([FirstName], [Email], [Password]) VALUES ('{0}', '{1}', '{2}')", txtName.Text, txtEmail.Text, txtPassword.Text);
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                sqlconn.Open();
                sqlcomm.ExecuteNonQuery();

                Response.Redirect("Success.aspx");
            }
            catch (Exception ex)
            {
                lblQuery.Text = "Error: " + ex.Message;
            }
            finally
            {
                sqlconn.Close();
            }
        }
    }
}