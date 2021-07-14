<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPage2.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Login_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="main">
        <div class="login">
             <h2 class="text-center">Register</h2>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="nameTextBox" ErrorMessage="Name is Required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="nameTextBox" runat="server" CssClass="box" 
                placeholder="Name *" BorderWidth="2px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="emailTextBox" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="emailTextBox" runat="server" CssClass="box" 
                placeholder="Email *" BorderWidth="2px" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="phoneTextBox" ErrorMessage="Phone Number os Required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="phoneTextBox" runat="server" CssClass="box" 
                placeholder="Phone number *" BorderWidth="2px" TextMode="Phone"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="passwordTextBox" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="passwordTextBox" runat="server" CssClass="box" 
                placeholder="Password *" BorderWidth="2px" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="passwordTextBox" ControlToValidate="confirmTextBox" 
                ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
            <asp:TextBox ID="confirmTextBox" runat="server" CssClass="box" 
                placeholder="Confirm Password *" BorderWidth="2px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="registerButton" runat="server" Text="Register" 
                cssclass="registerbutton"  OnClick="registerButton_Click" Height="50px" Width="366px"/>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>
      </div>
    <br />
    <br />
</asp:Content>



