using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group_Project_UI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtDate.Text == "")
            {
                lblErrorDate.Text = "Error, the date of the task must be set.";
            }
            if (txtStartTime.Text == "")
            {
                lblErrorStartTime.Text = "Error, the start time of the task must be set.";
            }
            if (txtEndTime.Text == "")
            {
                lblErrorEndTime.Text = "Error, the end time of the task must be set.";
            }
            if (lblErrorDate.Text == "" && lblErrorStartTime.Text == "" && lblErrorEndTime.Text == "")
            {
                //Code to send info to database
                Response.Redirect("Home.aspx");
                lblErrorDate.Text = "";
                lblErrorEndTime.Text = "";
                lblErrorStartTime.Text = "";
            }
            if (!(txtDate.Text == ""))
            {
                lblErrorDate.Text = "";
            }
            if (!(txtStartTime.Text == ""))
            {
                lblErrorStartTime.Text = "";
            }
            if (!(txtEndTime.Text == ""))
            {
                lblErrorEndTime.Text = "";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtDate.Text = "";
            txtStartTime.Text = "";
            txtEndTime.Text = "";
            Response.Redirect("Home.aspx");
        }
    }
}