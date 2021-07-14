<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/Dashboard.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Login_Profile" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="propic">
        <br />
        <h2 class="text-center">Profile</h2>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="../Images/propic.png" style="height: 92px; width: 95px" />
        </div>
        <div class="profile">
        <h4 class="heading">Personal Details</h4>
        <hr />
            <br />
         &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="nameTextBox" runat="server" CssClass="box" 
                placeholder="Name *" BorderWidth="2px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="emailTextBox" runat="server" CssClass="box" 
                placeholder="Email *" BorderWidth="2px" TextMode="Email" BackColor="LightGray" ForeColor="Black"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cannot be changed
         &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="phoneTextBox" runat="server" CssClass="box" 
                placeholder="Phone number *" BorderWidth="2px" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        <h4 class="heading">Change Password</h4>
        <hr />
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="passwordTextBox" runat="server" CssClass="box" 
                placeholder="New Password *" BorderWidth="2px" TextMode="Password"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="confirmTextBox" runat="server" CssClass="box" 
                placeholder="Confirm Password *" BorderWidth="2px" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="passwordTextBox" ControlToValidate="confirmTextBox" 
                ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
        <br />
            <br />
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="updateButton" runat="server" Text="Update" 
                cssclass="registerbutton" BorderWidth="2px" Height="40px" Width="380px" OnClick="updateButton_Click" />
        </div>
</asp:Content>


