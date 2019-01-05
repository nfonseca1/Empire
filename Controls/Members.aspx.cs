using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using App;

public partial class Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        IDApplication app = new IDApplication();

        string strPer_ID = "";
        int int_ID = 0;


        Session["error"] = "";
        //If login status isn't true when loading page, return to login page
        if ((string)Session["LoggedIn"] != "TRUE")
        {
            Response.Redirect("/Error.aspx");
        }

        //Does ID Exist?
        if ((!IsPostBack) && Request.QueryString["ID"] != null)
        {
            //If so...Gather ID and Fill Form
            strPer_ID = Request.QueryString["ID"].ToString();

            int_ID = Convert.ToInt32(strPer_ID);
            deleteMsg.Text = app.DeleteOnePerson(int_ID).ToString() + " contact deleted";
        }
        else
        {
            deleteMsg.Text = "";
        }

        DataSet ds = app.SearchContacts(txtFirstNameSearch.Text, txtLastNameSearch.Text);

        applications.DataSource = ds;
        applications.DataMember = ds.Tables[0].TableName;
        applications.DataBind();
    }
    protected void Btn_Search(object sender, EventArgs e)
    {
        IDApplication app = new IDApplication();
        //Gather search info and display results
        DataSet ds = app.SearchContacts(txtFirstNameSearch.Text, txtLastNameSearch.Text);

        applications.DataSource = ds;
        applications.DataMember = ds.Tables[0].TableName;
        applications.DataBind();
    }
}