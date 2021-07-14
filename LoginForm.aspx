<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage2.master" AutoEventWireup="true" CodeFile="LoginForm.aspx.cs" Inherits="Login_LoginForm" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="main" background-color="black">
        <div class="login">
            <h2 class="text-center">Login</h2>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="emailTextBox" ErrorMessage="Email id is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="emailTextBox" runat="server" CssClass="box" 
                placeholder="Email id" BorderWidth="1px"></asp:TextBox>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="passwordTextBox" ErrorMessage="Password cannot be empty." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="passwordTextBox" runat="server" CssClass="box" 
                placeholder="Password" BorderWidth="1px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="loginButton" runat="server" Text="Login" cssclass="button" Height="50px" Width="370px" OnClick="loginButton_Click"/>
        </div>
        <br />
        <ul class="ul">
        <li class="l"><a href="../Login/ResetPassword.aspx">Forgot Password</a></li>
        <li class="r"><a href="../Login/Registration.aspx">Sign Up</a></li>
        </ul>
    </div>
     <br />
    <br />
    <br />
    <br />
</asp:Content>


