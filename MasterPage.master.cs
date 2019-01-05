using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Change between "Login" and "Logout" depending on whether you are or not
        if ((string)Session["LoggedIn"] == "TRUE")
        {
            logLink.Text = "LOGOUT";
        }
        else
        {
            logLink.Text = "LOGIN";
        }
    }
}
