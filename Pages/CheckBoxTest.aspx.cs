using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestPage.Pages
{
    public partial class CheckBoxTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                chklst.Items.Add("C");
                chklst.Items.Add("C++");
                chklst.Items.Add("C#");
                chklst.Items.Add("Visual Basic 6.0");
                chklst.Items.Add("VB.Net");
                chklst.Items.Add("Pascal");

            }

        }

        protected void cmdOK_Click(object sender, EventArgs e) 
        {
            lblResult.Text = "You chose: <b>";

            foreach (ListItem lstItem in chklst.Items)
            {
                if (lstItem.Selected)
                {
                    // add text to label
                    lblResult.Text += "<br />" + lstItem.Text;
                }
            }

            lblResult.Text += "</b>";
        }
    }
}