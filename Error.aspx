<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
    <!--In case you access a member page when you aren't logged in (Members.aspx)-->
    <div class="headerApply" style="margin-top:60px;">
        <p style="font-size:65px;color:#e0b311;font-weight:900;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Sorry</p>
        <p style="font-size:35px;color:white;font-weight:400;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;You must be <a href="/Controls/Login.aspx" id="signIn">Logged In</a> to view this page.</p>
    </div>
</asp:Content>
