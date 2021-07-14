<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage2.master" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="Login_ResetPassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="main">
        <div class="login">
            <h2 class="text-center">Reset Password</h2>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="EmailTextBox" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="box" 
                placeholder="Email Id*" BorderWidth="2px" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="passwordTextBox" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="passwordTextBox" runat="server" CssClass="box" 
                placeholder="New Password*" BorderWidth="2px" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="passwordTextBox" ControlToValidate="confirmTextBox" 
                ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
            <asp:TextBox ID="confirmTextBox" runat="server" CssClass="box" 
                placeholder="Confirm Password*" BorderWidth="2px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="registerButton" runat="server" Text="Reset" 
                cssclass="button" OnClick="registerButton_Click"/>
            <ul class="ul">
        <br />
        <li class="l"><a></a></li>
        <li class="r"><a href="../Login/LoginForm.aspx">Login</a></li>
        </ul>
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
</asp:Content>


