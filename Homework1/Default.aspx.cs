using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework1
{

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) return;

            String message = "";

            foreach (ListItem bean in beans.Items)
            {
                if (!bean.Selected) continue;
                message += "Bean: " + bean.Text + "<br />";
            }

            foreach (ListItem grinder in grinders.Items)
            {
                if (!grinder.Selected) continue;
                message += "Grinder: " + grinder.Text + "<br />";
            }

            foreach (ListItem brewer in brewers.Items)
            {
                if (!brewer.Selected) continue;
                message += "Brewer: " + brewer.Text + "<br />";
            }

            choices.Text = message;
        }
    }

}