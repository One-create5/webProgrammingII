using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestPage.Pages
{
    public partial class ValidationTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdOK_Click(object sender, EventArgs e) 
        {
            // Abort the event if any control on the page is invalid
            if (!Page.IsValid) return;

            lblMessage.Text = "cmdOK_Click event handler executed.";
        }
    }
}