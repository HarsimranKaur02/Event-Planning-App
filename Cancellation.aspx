<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/Dashboard.master" AutoEventWireup="true" CodeFile="Cancellation.aspx.cs" Inherits="Login_Cancellation" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="window ">
        <br />
        <br />
        <br />
    <h2 class="text-center">Cancel an Event</h2>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Bookig Id is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><asp:TextBox ID="TextBox1" runat="server" CssClass="box" 
                placeholder="Booking Id*"></asp:TextBox>
    <br />
        <br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Email Id" CssClass="box"></asp:TextBox>
    <br />
    <br />
        <br />
          <asp:Button ID="DeleteButton" runat="server" Text="Cancel Booking" cssclass="cancelbutton" Height="50px" Width="370px" OnClick="DeleteButton_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br /><br /><br />
    </div>
</asp:Content>


