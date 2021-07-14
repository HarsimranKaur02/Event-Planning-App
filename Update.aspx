<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/Dashboard.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Login_Update" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <div class="window">
         <br />
    <h2 class="text-center">Update an Event</h2>
    <br />
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Bookig Id is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><asp:TextBox ID="TextBox4" runat="server" CssClass="box" 
                placeholder="Booking Id*"></asp:TextBox>
         <br />
        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><asp:TextBox ID="TextBox1" runat="server" CssClass="box" 
                placeholder="Name*"></asp:TextBox>
    <br />
        <br />
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Email Id" CssClass="box"></asp:TextBox>
    <br />
    <br />
    <table>
      <tr>
       <td>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Date of Booking" CssClass="box" OnClick="ImageButton1_Click"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" ImageUrl="../Images/calendar.png" runat="server" ImageAlign="AbsBottom" Height="53px" Width="49px" OnClick="ImageButton1_Click" />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="202px" Width="363px" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
           </asp:Calendar>
       </td>
      </tr>
    </table>
    <br />
     <asp:DropDownList ID="DropDownList2" runat="server" CssClass="box" Height="50px" Width="360px" >
        <asp:ListItem>Occassion</asp:ListItem>
        <asp:ListItem>Birthday</asp:ListItem>
        <asp:ListItem>Marriage</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <asp:TextBox ID="TextBox5" runat="server" CssClass="box" placeholder="Theme"></asp:TextBox>
    <br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="box" Height="50px" Width="365px" >
        <asp:ListItem>Venue List</asp:ListItem>
        <asp:ListItem>The Paradise</asp:ListItem>
        <asp:ListItem>The Virk Palace</asp:ListItem>
        <asp:ListItem>Mehta Farms</asp:ListItem>
        <asp:ListItem>Savitri Lawns</asp:ListItem>
        <asp:ListItem>The Heritage Garden</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
          <asp:Button ID="UpdateButton" runat="server" Text="Update Booking" cssclass="registerbutton" Height="50px" Width="370px" OnClick="UpdateButton_Click"/>
   </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
</asp:Content>


