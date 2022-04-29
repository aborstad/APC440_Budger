using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace GroupUI
{
    public partial class DailyView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToLongDateString();
            lblTime.Text = DateTime.Now.ToShortTimeString();
        }

        protected void btnTasks_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTask.aspx");
        }

        protected void btnReminder_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateReminder.aspx");
        }

        protected void btnDailView_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            DateTime datetime = Convert.ToDateTime(txtDate.Text, System.Globalization.CultureInfo.GetCultureInfo("hi-IN").DateTimeFormat);

            SqlConnection conn = null;

            var sampleDataTable = new DataTable();
            var sampleDataTable2 = new DataTable();

            try
            {

                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                //string query = "SELECT Reminders.ReminderID, Reminders.ReminderName, Reminders.ReminderDescription, Reminders.ReminderDate, Reminders.ReminderTime, Reminders.UserID, Tasks.TaskID, Tasks.TaskName, Tasks.TaskDescription, Tasks.TaskDate, Tasks.TaskTime, Tasks.UserID FROM Reminders INNER JOIN Tasks ON Reminders.UserID = Tasks.UserID WHERE (Reminders.ReminderDate = @Date)";
                string query = "SELECT ReminderName, ReminderDescription, ReminderDate, ReminderTime FROM Reminders WHERE ReminderDate = @Date";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Date", datetime);
                conn.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(sampleDataTable);
                conn = null;
                cmd = null;
                conn = new SqlConnection(connString);
                query = "SELECT TaskName, TaskDescription, TaskDate, TaskTime FROM Tasks WHERE TaskDate = @Date";
                cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Date", datetime);
                conn.Open();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd);
                da2.Fill(sampleDataTable2);

            }
            catch (Exception ex)
            {
                Response.Write("Error occurred: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

            GridView1.DataSource = sampleDataTable;
            GridView1.DataBind();
            GridView2.DataSource = sampleDataTable2;
            GridView2.DataBind();


        }
    }
}