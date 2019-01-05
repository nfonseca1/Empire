<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
    <div class="headerApply" style="margin-top:60px;">
        <p style="font-size:65px;color:#e0b311;font-weight:900;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;LOGIN</p>
        <p style="font-size:35px;color:white;font-weight:400;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Not a member? <a href="/Apply.aspx" id="signIn">Sign Up</a> at the apply page.</p>
    </div>
    <form runat="server">
        <!--Login labels and textboxes-->
        <table style="margin:400px auto auto 600px;">
            <tr>
                <td><asp:Label ID="lblLoginID" CssClass="label" runat="server" Text="ID Name:" />&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
                    <asp:TextBox ID="txtLoginID" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
            <tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr>
            <tr>
                <td><asp:Label ID="lblLoginPass" CssClass="label" runat="server" Text="Password:" />&emsp;&emsp;&emsp;&emsp;&emsp;
                    <asp:TextBox ID="txtLoginPass" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
        </table><br /><br /><br />
        <!--Login button and Label Message-->
        <div style="margin-left:800px;"><asp:Button ID="btnLogin" runat="server" Text="Submit" width="100px" OnClick="Btn_Login"/></div>
        <br /><br />
        <asp:Label ID="lblErrorMsg" CssClass="label" runat="server" style="margin-left:600px; color:red;"/>
    </form>
</asp:Content>

