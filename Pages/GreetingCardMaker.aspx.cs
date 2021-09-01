using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Text;
using System.ComponentModel;


namespace TestPage.Pages
{
    public partial class GreetingCardMaker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                // Get the list of colors.
                string[] colorArray = Enum.GetNames(typeof(KnownColor));
                ddlBackColor.DataSource = colorArray;
                ddlBackColor.DataBind();
                ddlForeColor.DataSource = colorArray;
                ddlForeColor.DataBind();
                ddlForeColor.SelectedIndex = 34;
                ddlBackColor.SelectedIndex = 163;
                // Get the list of available fonts and add them to the font list.
                InstalledFontCollection fonts = new InstalledFontCollection();
                foreach (FontFamily family in fonts.Families)
                {
                    ddlFontName.Items.Add(family.Name);
                }
                // Set border style options.
                string[] borderStyleArray = Enum.GetNames(typeof(BorderStyle));
                rblBorder.DataSource = borderStyleArray;
                rblBorder.DataBind();
                // Select the first border option.
                rblBorder.SelectedIndex = 0;
                // Set the picture.
                imgDefault.ImageUrl = "../images/defaultpic.png";
            }
        }
        private void UpdateCard()
        {
            // Update the color.
            pnlCard.BackColor = Color.FromName(ddlBackColor.SelectedItem.Text);
            lblGreeting.ForeColor = Color.FromName(ddlForeColor.SelectedItem.Text);
            // Update the font.
            lblGreeting.Font.Name = ddlFontName.SelectedItem.Text;
            try
            {
                if (Int32.Parse(txtFontSize.Text) > 0)
                {
                    lblGreeting.Font.Size = FontUnit.Point(Int32.Parse(txtFontSize.Text));
                }
            }
            catch
            {
                // Ignore invalid value.
            }
            try
            {
                if (Int32.Parse(txtFontSize.Text) > 0)
                {
                    lblGreeting.Font.Size =
                        FontUnit.Point(Int32.Parse(txtFontSize.Text));
                }
            }
            catch
            {
                // Ignore invalid value.
            }
            // Find the appropriate TypeConverter for the BorderStyle enumeration.
            TypeConverter cnvrt = TypeDescriptor.GetConverter(typeof(BorderStyle));
            // Update the border style using the value from the converter.
            pnlCard.BorderStyle = (BorderStyle)cnvrt.ConvertFromString(rblBorder.SelectedItem.Text);
            // Update the picture.
            if (chkPicture.Checked == true)
            {
                imgDefault.Visible = true;
            }
            else
            {
                imgDefault.Visible = false;
            }
            // Set the text.
            lblGreeting.Text = txtGreeting.Text;
        }
        protected void ControlChanged(Object sender, EventArgs e)
        {
            // Refresh the greeting card (because a control was changed).
            UpdateCard();
        }
        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            // Refresh the greeting card (because the button was clicked).
            UpdateCard();
        }
    }
}