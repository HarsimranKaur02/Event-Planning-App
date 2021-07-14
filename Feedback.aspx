<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Login_Feedback" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="window">
      <div ="mid">
        <h1 class="text-center1">Feedback</h1>
        <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Email id is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><asp:TextBox ID="TextBox1" runat="server" CssClass="box" 
                placeholder="Email Id*"></asp:TextBox>
        <br />
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Text Field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><asp:TextBox ID="TextBox2" runat="server" CssClass="box" 
                placeholder="Feedback*" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="FeedbackButton" runat="server" Text="Submit" cssclass="btn" Height="50px" Width="370px" OnClick="FeedbackButton_Click"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FeedBack]"></asp:SqlDataSource>
    </div>
       </div>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

