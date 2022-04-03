using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                txtDescription.Text = "Please enter a description"; // this will display in the txt box if user doesn't enter a description.
                return;
            }
            else;
            {
                txtDescription.Text = String.Empty;
            }
            //**********************************************************************
            //Will finish the "Add Reminder" in Sprint 2
            //DateTime time = DateTime.Parse("d/MM/yyyy");
            Response.Redirect("Home.aspx");
            

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}