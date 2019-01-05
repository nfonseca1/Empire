using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //If you are at this page, you are logged out. So set Login status to false
        Session["LoggedIn"] = "FALSE";

        //Session for error message in case you try to access a page when you aren't logged in yet
        lblErrorMsg.Text = (string)Session["error"];
    }
    protected void Btn_Login(object sender, EventArgs e)
    {
        //*Admin user and password are same as previous lab*
        if (txtLoginID.Text == "Scott" && txtLoginPass.Text == "NEIT")
        {
            //Set login status to true and redirect to content page
            Session["LoggedIn"] = "TRUE";
            Response.Redirect("/Default.aspx");
        }
        else
        {
            lblErrorMsg.Text = "Invalid Login Credentials";
        }
    }
}