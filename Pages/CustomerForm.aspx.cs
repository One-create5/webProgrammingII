using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestPage.Pages
{
    public partial class CustomerForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(Object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //lblMessage.Text = "This is a valid form.";
            }
        }
        protected void cmdCancel_Click(Object sender, EventArgs e)
        {
            //lblMessage.Text = "No attempt was made to validate this form.";
        }

        protected void vldCode_ServerValidate(Object source, ServerValidateEventArgs e)
        {
            try
            {
                // Check whether the first three digits are divisible by seven.
                int val = Int32.Parse(e.Value.Substring(0, 3));
                if (val % 7 == 0)
                {
                    e.IsValid = true;
                }
                else
                {
                    e.IsValid = false;
                }
            }
            catch
            {
                // An error occurred in the conversion.
                // The value is not valid.
                e.IsValid = false;
            }
        }
    }
}