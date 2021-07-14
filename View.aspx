<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/Dashboard.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="Login_View" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
         <div class="grid">
              <h2 class="text">Previous Bookings</h2>
             <br />
         <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="3px" CellPadding="7" ForeColor="Black" GridLines="Vertical" Height="200px" Width="700px">
             <AlternatingRowStyle BackColor="White" />
             <FooterStyle BackColor="#CCCC99" />
             <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
             <RowStyle BackColor="#F7F7DE" />
             <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#FBFBF2" />
             <SortedAscendingHeaderStyle BackColor="#848384" />
             <SortedDescendingCellStyle BackColor="#EAEAD3" />
             <SortedDescendingHeaderStyle BackColor="#575357" />
         </asp:GridView>
        </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>
</asp:Content>

