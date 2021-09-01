using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestPage.Pages
{
    public partial class EventTracker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Log("<<Page_Load>>");
            
        }

        protected void Page_PreRender(object sender, EventArgs e) 
        {
            // When the page.PreRender event occers, it it too late
            // to change the list.

            Log("Page_PreRender");
        }

        protected void CtrlChanged(object sender, EventArgs e) 
        {
            // Find the control ID of the sender
            // This requires converting the Object type into a Control class

            string ctrlName = ((Control)sender).ID;
            Log(ctrlName + " Changed");
        }

        private void Log(string entry) 
        {
            lstEvents.Items.Add(entry);

            // select the last item to scroll the list so the most recent 
            // entries are visable 

            lstEvents.SelectedIndex = lstEvents.Items.Count - 1;
        }
    }
}