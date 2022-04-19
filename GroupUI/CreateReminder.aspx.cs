using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ReminderUI
{
    public partial class ReminderUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //**********************************************************************
            // input validation for reminder description input
            if (txtDescription.Text == String.Empty)
            {
                lblErrorDescription.Text = "Please enter a description";
            }
            if (txtName.Text == String.Empty)
            {
                lblErrorName.Text = "Please enter a name";
            }
            if (txtDate.Text == String.Empty)
            {
                lblErrorDate.Text = "Please enter a date";
            }
            if (txtTime.Text == String.Empty)
            {
                lblErrorTime.Text = "Please enter a time.";
            }
            if (!(txtDescription.Text == ""))
            {
                lblErrorDescription.Text = "";
            }
            if (!(txtName.Text == ""))
            {
                lblErrorName.Text = "";
            }
            if (!(txtDate.Text == ""))
            {
                lblErrorDate.Text = "";
            }
            if (!(txtTime.Text == ""))
            {
                lblErrorTime.Text = "";
            }
            if (lblErrorDescription.Text == String.Empty && lblErrorName.Text == String.Empty && lblErrorDate.Text == String.Empty && lblErrorTime.Text == String.Empty)
            {
                //**********************************************************************
                // Add Info to DB
                DateTime datetime = Convert.ToDateTime(txtDate.Text, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                string finaltime = txtTime.Text + ":00";
                DateTime time = Convert.ToDateTime(finaltime, System.Globalization.CultureInfo.GetCultureInfo("es-Es").DateTimeFormat);

                SqlConnection conn = null;
                try
                {
                    string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    conn = new SqlConnection(connString);
                    var query = String.Format("INSERT INTO [Reminders] ([ReminderName], [ReminderDescription], [ReminderDate], [ReminderTime]) VALUES('{0}', '{1}', '{2}', '{3}')", txtName.Text, txtDescription.Text, datetime, time);
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    // handle error here
                    Console.WriteLine("Error: " + ex.Message);
                }
                finally
                {
                    conn.Close();
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}