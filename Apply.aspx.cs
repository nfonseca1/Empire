using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using App;

public partial class Apply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str_ID = "";
        int int_ID = 0;

        btnUpdate.Width = 0;
        //Does ID Exist?
        if ((!IsPostBack) && Request.QueryString["ID"] != null)
        {
            System.Diagnostics.Debug.WriteLine(Request.QueryString["ID"]);
            //If so...Gather App ID and Fill Form
            str_ID = Request.QueryString["ID"].ToString();
            lblAppID.Text = str_ID;
            int_ID = Convert.ToInt32(str_ID);

            //Fill the "app" info based on ID
            IDApplication app = new IDApplication();
            SqlDataReader dr = app.FindOnePerson(int_ID);
            while (dr.Read())
            {
                txtFirstName.Text = dr["FirstName"].ToString();
                txtMiddleName.Text = dr["MiddleName"].ToString();
                txtLastName.Text = dr["LastName"].ToString();
                txtDOB.Text = dr["DateOfBirth"].ToString();
                txtID.Text = dr["IDName"].ToString();
                txtPassword.Text = dr["IDPassword"].ToString();
                txtEmail.Text = dr["Email"].ToString();
                txtReEnterPass.Text = dr["IDPassword"].ToString();
            }

        }
    }
    protected void Btn_Submit(object sender, EventArgs e)
    {
        Btn_Function(false);
    }

    protected void Btn_Update(object sender, EventArgs e)
    {
        Btn_Function(true);
    }

    public void Btn_Function(bool IsAnUpdate)
    {
        // If the regular expressions are valid, store them in the variables
        if (revFirstName.IsValid &&
            revMiddleName.IsValid &&
            revLastName.IsValid &&
            cvDOB.IsValid &&
            revID.IsValid &&
            revPassword.IsValid &&
            revEmail.IsValid &&
            cvReEnterPass.IsValid)
        {
            
            IDApplication app = new IDApplication();

            app.FirstName = txtFirstName.Text;           //set class variables to textbox info
            app.MiddleName = txtMiddleName.Text;
            app.LastName = txtLastName.Text;
            app.DateOfBirth = txtDOB.Text;
            app.HomeWorld = ddlHome.Text;
            app.NetWorth = ddlNetWorth.Text;
            app.Field = ddlField.Text;
            app.LOD = ddlLOD.Text;
            app.PreBlasterType = ddlBlaster.Text;
            app.PreStarFighter = ddlStarFighter.Text;
            app.IDName = txtID.Text;
            app.Password = txtPassword.Text;
            app.Email = txtEmail.Text;
            app.Defector = cbDefector.Checked;
            app.PreCombat = cbCombat.Checked;

            if (IsAnUpdate) FormComplete(true, app);
            else FormComplete(false, app);
        }
    }
    public void FormComplete(bool isAnUpdate, IDApplication app)
    {   //If there are no feedback errors, call the appropriate function (Update or Add) and return feedback
        if (!app.Feedback.Contains("ERROR:"))
        {
            if (isAnUpdate)
            {
                app.ID = Convert.ToInt32(lblAppID.Text);
                lblFeedback.Text = app.UpdateAContact().ToString() + " Records Updated!";
            }
            else
            {
                lblFeedback.Text = app.AddContact();   //if no errors when setting values, then perform the insertion into db
                System.Diagnostics.Debug.WriteLine(lblFeedback.Text);
            }
        }
    }
}