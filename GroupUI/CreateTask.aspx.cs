using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Group_Project_UI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtDescription.Text == "")
            {
                lblErrorDescription.Text = "The description must be set.";
            }
            if (txtName.Text == "")
            {
                lblErrorName.Text = "The name must be set.";
            }
            if (txtDate.Text == "")
            {
                lblErrorDate.Text = "The date must be set.";
            }
            if (txtTime.Text == "")
            {
                lblErrorTime.Text = "The time must be set.";
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
            if (lblErrorName.Text == "" && lblErrorDescription.Text == "" && lblErrorDate.Text == "" && lblErrorTime.Text == "")
            {
                //Code to send info to database
                DateTime datetime = Convert.ToDateTime(txtDate.Text, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);
                string finaltime = txtTime.Text + ":00";
                DateTime time = Convert.ToDateTime(finaltime, System.Globalization.CultureInfo.GetCultureInfo("es-Es").DateTimeFormat);

                SqlConnection conn = null;
                try
                {
                    string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    conn = new SqlConnection(connString);
                    var query = String.Format("INSERT INTO [Tasks] ([TaskName], [TaskDescription], [TaskDate], [TaskTime]) VALUES('{0}', '{1}', '{2}', '{3}')", txtName.Text, txtDescription.Text, datetime, time);
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    // handle error here
                    lblErrorQuery.Text = "Error: " + ex.Message;
                    Console.WriteLine("Error: " + ex.Message);
                }
                finally
                {
                    conn.Close();
                    //End Database Code

                    lblErrorDescription.Text = "";
                    lblErrorDate.Text = "";
                    lblErrorName.Text = "";
                    lblErrorTime.Text = "";
                    Response.Redirect("Home.aspx");
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtDescription.Text = "";
            txtDate.Text = "";
            txtTime.Text = "";
            Response.Redirect("Home.aspx");
        }
    }
}