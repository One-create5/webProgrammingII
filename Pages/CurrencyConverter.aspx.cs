using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestPage.Pages
{
    public partial class CurrencyConverter : System.Web.UI.Page
    {

        protected void Page_Load(Object sender, EventArgs e) 
        {
            if (!this.IsPostBack)
            {
                Currency.Items.Add(new ListItem("Euro", "0.85"));
                Currency.Items.Add(new ListItem("Japanese Yen","110.33"));
                Currency.Items.Add(new ListItem("Canadian Dollar","1.2"));

                //Setting the graph to nonvisiable
                Graph.Visible = false;
            }

        }
        protected void Convert_ServerClick(object sender, EventArgs e)
        {

            try
            {
                decimal USAmount = Decimal.Parse(US.Value);

                if (USAmount <= 0)
                {
                    throw new InvalidOperationException();
                }

                ListItem item = Currency.Items[Currency.SelectedIndex];

                decimal newAmount = USAmount * Decimal.Parse(item.Value);
                Result.Style["color"] = "Black";

                Result.InnerText = USAmount.ToString() + " U.S. dollars = " + newAmount + " " + item.Text;

            }
            catch (FormatException)
            {
                Result.Style["color"] = "Red";
                Result.InnerText = "**Please use the correct format. Use Only numbers.**";
            }
            catch (InvalidOperationException) 
            {
                Result.Style["color"] = "Red";
                Result.InnerText = "** Use only positive numbers **";
            }
            
           
        }

        protected void ShowGraph_ServerClick(Object sender, EventArgs e) 
        {
            Graph.Src = "../Images/pic" + Currency.SelectedIndex.ToString() + ".JPG";

            Graph.Visible = true;
        }

    }
}