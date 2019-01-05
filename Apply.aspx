<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="Apply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
    <img src="/images/starDestroyer.png" id="img-starDestroyer" alt="" />
    <!--Header Text-->
    <div class="headerApply">
        <p style="font-size:65px;color:#e0b311;font-weight:900;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; JOIN THE EMPIRE</p><br />
        <p style="font-size:35px;color:#e0b311;font-weight:400;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Fill in the information below to send your application.</p>
        <p style="font-size:35px;color:white;font-weight:400;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Already a member? <a href="/Controls/Login.aspx" id="signIn">Sign In</a> to apply for higher positions.</p>
    </div>
    <form id="application" runat="server">
        <!--Application Section-->
        <img src="/images/appHeading.png" class="title-img" alt="" />
        <asp:Label ID="lblAppID" runat="server" />
        <table style="margin:-350px auto auto 100px;">
            <tr><!--First Name, Middle Name, Last Name (Validators, Labels and Text Boxes)-->
                <td><asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblFirstName" CssClass="label" runat="server" Text="First Name:" />&emsp;&emsp;
                    <asp:TextBox ID="txtFirstName" BackColor="#d5d5d5" runat="server" /></td>
                <td><asp:RequiredFieldValidator ID="rfvMiddleName" runat="server" ControlToValidate="txtMiddleName" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblMiddleName" CssClass="label" runat="server" Text="Middle Name:" />&emsp;
                    <asp:TextBox ID="txtMiddleName" BackColor="#d5d5d5" runat="server" /></td>
                <td><asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblLastName" CssClass="label" runat="server" Text="Last Name:" />&emsp;
                    <asp:TextBox ID="txtLastName" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
            <tr><!--Expression Validators for previous row-->
                <td>&emsp;<asp:RegularExpressionValidator ID="revFirstName" runat="server" ErrorMessage="First Name is invalid" 
        ControlToValidate="txtFirstName" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"/> </td>
                <td>&emsp;<asp:RegularExpressionValidator ID="revMiddleName" runat="server" ErrorMessage="Middle Name is invalid" 
        ControlToValidate="txtMiddleName" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"/> </td>
                <td>&emsp;<asp:RegularExpressionValidator ID="revLastName" runat="server" ErrorMessage="Last Name is invalid" 
        ControlToValidate="txtLastName" ForeColor="Red" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$"/> </td>
            </tr>
            <tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr>
            <tr><!--DOB, Home World, Net Worth (Validators, Labels and Text Box/Drop Down lists)-->
                <td><asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblDOB" CssClass="label" runat="server" Text="Date of Birth:" />&emsp;
                    <asp:TextBox ID="txtDOB" BackColor="#d5d5d5" runat="server" /></td>
                <td><asp:Label ID="lblHome" CssClass="label" runat="server" Text="Home World: " />&emsp;&emsp;
                    <asp:DropDownList ID="ddlHome" BackColor="#d5d5d5" runat="server" Width="160px">
                        <asp:ListItem Text="Alderaan" Value="Alderaan" runat="server" /> 
                        <asp:ListItem Text="Bespin" Value="Bespin" runat="server" /> 
                        <asp:ListItem Text="Corellia" Value="Corellia" runat="server" /> 
                        <asp:ListItem Text="Coruscant" Value="Coruscant" runat="server" /> 
                        <asp:ListItem Text="Jakku" Value="Jakku" runat="server" /> 
                        <asp:ListItem Text="Naboo" Value="Naboo" runat="server" /> 
                        <asp:ListItem Text="Ryloth" Value="Ryloth" runat="server" /> 
                        <asp:ListItem Text="Tatooine" Value="Tatooine" runat="server" /> 
                        <asp:ListItem Text="Yavin 4" Value="Yavin 4" runat="server" /> 
                        <asp:ListItem Text="Other.." Value="Other" runat="server" /> 
                    </asp:DropDownList></td>
                <td><asp:Label ID="lblNetWorth" CssClass="label" runat="server" Text="Net Worth:" />&emsp;&emsp;
                    <asp:DropDownList ID="ddlNetWorth" BackColor="#d5d5d5" runat="server" Width="160px">
                        <asp:ListItem Text="< 10,000 credits" Value="< 10,000 credits" runat="server" /> 
                        <asp:ListItem Text="10,000-24,999 credits" Value="10,000-24,999" runat="server" /> 
                        <asp:ListItem Text="25,000-49,999 credits" Value="25,000-49,999" runat="server" /> 
                        <asp:ListItem Text="50,000-79,999 credits" Value="50,000-79,999" runat="server" /> 
                        <asp:ListItem Text="80,000-99,999 credits" Value="80,000-99,999" runat="server" /> 
                        <asp:ListItem Text="100,000-119,999 credits" Value="100,000-119,999" runat="server" /> 
                        <asp:ListItem Text="> 120,000 credits" Value="> 120,000" runat="server" />
                        <asp:ListItem Text="Prefer not to say" Value="Prefer not to say" runat="server" /> 
                    </asp:DropDownList></td>
            </tr>
            <tr><!--Expression Validator for previous row-->
                <td>&emsp;<asp:CompareValidator ID="cvDOB" Operator="DataTypeCheck" Type="Date" runat="server"
                    ControlToValidate="txtDOB" ErrorMessage="Date should be in format: mm/dd/yyyy"/></td>
            </tr>
        </table><br /><br /><br /><br /><br />
        <!--New Table with only Two Columns instead of Three-->
        <table style="margin-left:150px;">
            <tr><!--Primary Field and LOD (Validators, Labels and Drop Down Lists)-->
                <td><asp:Label ID="lblField" CssClass="label" runat="server" Text="Primary Field: " />&emsp;&emsp;&emsp;
                    <asp:DropDownList ID="ddlField" BackColor="#d5d5d5" runat="server" Width="160px">
                        <asp:ListItem Text="Assault" Value="Assault" runat="server" /> 
                        <asp:ListItem Text="Medic" Value="Medic" runat="server" /> 
                        <asp:ListItem Text="Support" Value="Support" runat="server" /> 
                        <asp:ListItem Text="Heavy" Value="Heavy" runat="server" /> 
                        <asp:ListItem Text="Specialist" Value="Specialist" runat="server" /> 
                        <asp:ListItem Text="Officer" Value="Officer" runat="server" /> 
                        <asp:ListItem Text="Pilot" Value="Pilot" runat="server" /> 
                        <asp:ListItem Text="Other.." Value="Other" runat="server" /> 
                    </asp:DropDownList></td>
                <td><asp:Label ID="lblLOD" CssClass="label" runat="server" Text="Location of Deployment:" />&emsp;&emsp;&emsp;
                    <asp:DropDownList ID="ddlLOD" BackColor="#d5d5d5" runat="server" Width="160px">
                        <asp:ListItem Text="Death Star 2" Value="Death Star2" runat="server" /> 
                        <asp:ListItem Text="Forest Moon of Endor" Value="Forest Moon of Endor" runat="server" /> 
                        <asp:ListItem Text="Tatooine" Value="Tatooine" runat="server" /> 
                        <asp:ListItem Text="Naboo" Value="Naboo" runat="server" /> 
                        <asp:ListItem Text="Hoth" Value="Hoth" runat="server" /> 
                        <asp:ListItem Text="Cloud City" Value="Cloud City" runat="server" /> 
                        <asp:ListItem Text="Sullust" Value="Sullust" runat="server" />
                        <asp:ListItem Text="Any" Value="Any" runat="server" />
                    </asp:DropDownList></td>
            </tr>
            <tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr>
            <tr><!--Blaster and Fighter Experience (Labels and Check Box Lists)-->
                <td><asp:Label ID="lblBlaster" CssClass="label" runat="server" Text="Are you experienced with any type of blaster?: " /><br />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBoxList CssClass="label" ID="ddlBlaster" BackColor="#353535" runat="server" Width="160px">
                        <asp:ListItem Text="Blaster Pistol" Value="Blaster Pistol" runat="server" /> 
                        <asp:ListItem Text="Blaster Rifle" Value="Blaster Rifle" runat="server" /> 
                        <asp:ListItem Text="Shock Blaster" Value="Shock Blaster" runat="server" /> 
                        <asp:ListItem Text="Heavy Blaster" Value="Heavy Blaster" runat="server" /> 
                        <asp:ListItem Text="Targeting Rifle" Value="Targeting Rifle" runat="server" /> 
                        <asp:ListItem Text="Rocket Launcher" Value="Rocket Launcher" runat="server" /> 
                        <asp:ListItem Text="Slug Thrower" Value="Slug Thrower" runat="server" /> 
                        <asp:ListItem Text="Other.." Value="Other" runat="server" /> 
                    </asp:CheckBoxList></td>
                <td style="padding-bottom:50px;"><asp:Label ID="lblStarFighter" CssClass="label" runat="server" Text="Are you experienced with flying any Star Fighters?:"/><br />&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBoxList CssClass="label" ID="ddlStarFighter" BackColor="#353535" runat="server" Width="160px">
                        <asp:ListItem Text="Bomber" Value="Bomber" runat="server" /> 
                        <asp:ListItem Text="Fighter" Value="Fighter" runat="server" /> 
                        <asp:ListItem Text="Freighter" Value="Freighter" runat="server" /> 
                        <asp:ListItem Text="Interceptor" Value="Interceptor" runat="server" /> 
                        <asp:ListItem Text="Transport" Value="Transport" runat="server" /> 
                        <asp:ListItem Text="Other.." Value="Other" runat="server" />
                    </asp:CheckBoxList></td>
            </tr>
            <tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr>
            <tr><!--Defector and Previous Combat (CheckBoxes)-->
                <td><asp:Label ID="lblDefector" CssClass="label" runat="server" Text="Have you ever been a member of the Rebellion?: " />
                    <asp:CheckBox ID="cbDefector" runat="server" />
                </td>
                <td><asp:Label ID="lblCombat" CssClass="label" runat="server" Text="Do you have any previous combat experience?: " />
                    <asp:CheckBox ID="cbCombat" runat="server" />
                </td>
            </tr>
        </table><br /><br /><br />
        <!--Profile Section-->
        <img src="/images/profileHeading.png" class="title-img" alt="" />
        <table style="margin:-350px auto auto 200px;">
            <tr><!--IDName and Password (Validators, Labels and TextBoxes)-->
                <td><asp:RequiredFieldValidator ID="rfvID" runat="server" ControlToValidate="txtID" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblID" CssClass="label" runat="server" Text="ID Name:" />&emsp;&emsp;
                    <asp:TextBox ID="txtID" BackColor="#d5d5d5" runat="server" /></td>
                <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblPassword" CssClass="label" runat="server" Text="Password:" />&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtPassword" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
            <tr><!--Expression Validator for previous row-->
                <td>&emsp;<asp:RegularExpressionValidator ID="revID" runat="server" ErrorMessage="ID should be at least 5 characters" 
        ControlToValidate="txtID" ForeColor="Red" ValidationExpression="^[\s\S]{5,}$"/> </td>
                <td>&emsp;<asp:RegularExpressionValidator ID="revPassword" runat="server" ErrorMessage="Password should be at least 8 characters with letters and numbers" 
        ControlToValidate="txtPassword" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"/> </td>
            </tr>
            <tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr>
            <tr><!--Email and Password Confirmation (Validators, Labels and TextBoxes)-->
                <td><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblEmail" CssClass="label" runat="server" Text="Email:" />&emsp;&emsp;&emsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtEmail" BackColor="#d5d5d5" runat="server" /></td>
                <td><asp:RequiredFieldValidator ID="rfvReEnterPass" runat="server" ControlToValidate="txtReEnterPass" 
                    ForeColor="Red" ErrorMessage="*"/>
                    <asp:Label ID="lblReEnterPass" CssClass="label" runat="server" Text="Re-Enter Password:" />&emsp;
                    <asp:TextBox ID="txtReEnterPass" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
            <tr><!--Expression Validator for previous row-->
                <td>&emsp;<asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Not a valid Email" 
        ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+"/> </td>
                <td>&emsp;<asp:CompareValidator ID="cvReEnterPass" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtReEnterPass" ForeColor="Red" ErrorMessage="Passwords must match"/></td>
            </tr>
        </table>
        <br /><br /><!--Submit and Update buttons + feedback label-->
        <div style="margin-left:700px;"><asp:Button ID="btnUpdate" runat="server" Text="Update" width="100px" OnClick="Btn_Update" style="padding:0 0 0 0; width:100px;"/>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" width="100px" OnClick="Btn_Submit"/></div>
        <asp:Label ID="lblFeedback" CssClass="label" runat="server" style="margin-left:700px;"/>
    </form>
</asp:Content>


