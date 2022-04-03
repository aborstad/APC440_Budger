using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Time_Budger_Home_Screen
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDate.Text = DateTime.Now.ToLongDateString();
            lblTime.Text = DateTime.Now.ToShortTimeString();

        }


        protected void btnDailView_Click(object sender, EventArgs e)
        {

        }

        protected void btnTasks_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTask.aspx");
        }

        protected void btnReminder_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateReminder.aspx");
        }

        protected void btnSignOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx");
        }
    }
}