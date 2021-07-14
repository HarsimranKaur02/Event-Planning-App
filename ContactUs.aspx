<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPageLogin.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Login_ContactUs" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="contact">
       <h1 class="text-center" color="">Contact Us</h1>
        <br />
        <br />
        <h4 class="heading cont">Address</h4>
        <br />
        <hr />
        <br />
        <i class=" fa fa-home" style="color:#696969"></i>&nbsp;<asp:Label ID="Label1" runat="server" Text="SCO-43,Sector-17 Plaza,Chandigarh." ForeColor="#696969">    
        </asp:Label>
        <br />
        <i class=" fa fa-clock-o" style="color: dimgrey"></i>&nbsp;<asp:Label ID="Label9" runat="server" Text="Office Timings: 10:00 am to 8:00 pm" ForeColor="#696969">    
        </asp:Label>
        <br />
        <br />
        <h4 class="heading cont">Contact Number</h4>
        <br />
        <hr />
        <br />
        <i class=" fa fa-phone" style="color: dimgrey"></i>&nbsp;<asp:Label ID="Label2" runat="server" Text="0172-567445" ForeColor="#696969">
        </asp:Label>
        <br />
        <i class=" fa fa-mobile" style="color: dimgrey"></i>&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="9123456700, 8878774455" ForeColor="#696969">
        </asp:Label>
        <br />
        <br />
        <h4 class="heading cont">E-mail ID</h4>
        <br />
        <hr />
        <br />
         <i class=" fa fa-envelope" style="color: dimgrey"></i>&nbsp;<asp:Label ID="Label3" runat="server" Text=" LifeEvents@gmail.com" ForeColor="#696969"></asp:Label>
        <br />
        <br />
        <h4 class="heading cont">Website</h4>
        <br />
        <hr />
        <br />
         <i class=" fa fa-globe" style="color: dimgrey"></i>&nbsp;<asp:Label ID="Label4" runat="server" Text="www.lifeevents.com" ForeColor="#696969">
        </asp:Label>
        <br />
        <br />
        <h4 class="heading cont">Follow us on Social Media</h4>
        <br />
        <hr />
        <br />
         <i class=" fa fa-instagram" style="color: dimgrey"></i>&nbsp;<asp:Label ID="Label5" runat="server" Text="Instagram" ForeColor="#696969">
        </asp:Label>
        <br />
         <i class=" fa fa-facebook-official" style="color:dimgrey"></i>&nbsp;<asp:Label ID="Label6" runat="server" Text="Facebook" ForeColor="#696969">
        </asp:Label>
        <br />
         <i class=" fa fa-twitter-square" style="color:dimgrey"></i>&nbsp;<asp:Label ID="Label7" runat="server" Text="Twitter" ForeColor="#696969">
         </asp:Label>
    </div>
    </div>
</asp:Content>