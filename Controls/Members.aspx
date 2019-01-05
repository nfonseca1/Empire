<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Members.aspx.cs" Inherits="Members" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
    <img src="/images/starDestroyer.png" id="img-starDestroyer" alt="" />
    <form id="memberList" runat="server">
        <!--Textboxes for search function-->
        <table style="margin:100px auto auto 400px;">
            <tr>
                <td><asp:Label ID="lblFirstNameSearch" CssClass="label" runat="server" Text="First Name:" />&emsp;&emsp;&emsp;&emsp;
                    <asp:TextBox ID="txtFirstNameSearch" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
            <tr><td>&emsp;</td></tr><tr><td>&emsp;</td></tr>
            <tr>
                <td><asp:Label ID="lblLastNameSearch" CssClass="label" runat="server" Text="Last Name:" />&emsp;&emsp;&emsp;&emsp;
                    <asp:TextBox ID="txtLastNameSearch" BackColor="#d5d5d5" runat="server" /></td>
            </tr>
        </table>
        <br />
        <div style="margin-left:625px;"><asp:Button ID="btnSearch" runat="server" Text="Search" width="100px" OnClick="Btn_Search"/></div>
        <br />
        <asp:Label ID="deleteMsg" runat="server" CssClass="label"/>
        <br /><br />
        <!--Display all Application info-->
        <asp:GridView runat="server" ID="applications" AutoGenerateColumns="false" style="width:98%; margin-left:10px; color:#cbcbcb; font-size:13px;">
            <Columns>
                <asp:BoundField DataField="ID" HeaderStyle-Width="25px" HeaderText="ID"  />
                <asp:BoundField DataField="FirstName" HeaderText="First Name"  />
                <asp:BoundField DataField="MiddleName" HeaderText="Middle Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderStyle-Width="60px" HeaderText="DOB"  />
                <asp:BoundField DataField="HomeWorld" HeaderStyle-Width="60px" HeaderText="Home" />
                <asp:BoundField DataField="NetWorth" HeaderText="NetWorth" />
                <asp:BoundField DataField="Field" HeaderStyle-Width="60px" HeaderText="Field"  />
                <asp:BoundField DataField="LOD" HeaderText="LOD" />
                <asp:BoundField DataField="PreBlasterType" HeaderText="PreBlasterType" />
                <asp:BoundField DataField="PreStarFighter" HeaderText="PreStarFighter"  />
                <asp:BoundField DataField="IDName" HeaderStyle-Width="80px" HeaderText="IDName" />
                <asp:BoundField DataField="Email" HeaderStyle-Width="150px" HeaderText="Email" />
                <asp:BoundField DataField="Defector" HeaderStyle-Width="35px" HeaderText="Defect" />
                <asp:BoundField DataField="PreCombat" HeaderStyle-Width="35px" HeaderText="Cmbt" />
                <asp:HyperLinkField Text="Edit" DataNavigateUrlFormatString="/Apply.aspx?ID={0}" HeaderStyle-Width="35px" DataNavigateUrlFields="ID" />
                <asp:HyperLinkField Text="Delete" DataNavigateUrlFormatString="/Members.aspx?ID={0}" HeaderStyle-Width="35px" DataNavigateUrlFields="ID" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
