<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPageLogin.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Login_Services" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <div class="categories" style="height: 900px; margin-bottom: 30px; font-family: Georgia;">

        <div class="birthday" style="float: left; width: 50%; height: 800px;">
            
            <img src="../Images/4.jpg" style="height: 350px; width: 90%; margin: 5%" />
            <h1 style="text-align: center;  color:  #FF6A3D; margin-top: 30px; margin-bottom: 30px; font-size:40px;">WEDDINGS</h1>
             <p style="margin: 5%; color: dimgrey; font-size: 20px; font-weight: normal; padding:20px 10px;">
                The festive environment, the grandeur of the decorations, the happiness of being surrounded by near and dear ones or the excitement of the 
            beginning of a whole new phase of life.
            Well, a memorable wedding day is without doubt all of these and a lot more.
            Make your wedding day memorable with Life Events. Book yours now!
            </p>
            
        </div>

        <div class="wedding" style="float: left; width: 50%; height: 800px; ">
            <br />
            <h1 style="text-align: center; color:  #FF6A3D; margin-top: 40px; margin-bottom: 30px; font-size:40px;">BIRTHDAYS</h1>
            <p style="margin: 5%; color: dimgrey; font-size: 20px; font-weight: normal; padding:20px 10px;">
                Birthdays are the best kind of celebration. It has been another year of life for your or your loved one and that is certainly a reason
            to party. Whether you are planning your little one’s birthday bash, your buddy’s surprise party or your own soiree, we will be there for you!
            So. why wait? Plan your special one's birthday party with Life Events now!
            </p>
            <img src="../Images/1.jpg" style="height: 350px; width: 90%; margin: 5%" />
           
        </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Booking" runat="server" Text="Book Now"  PostBackUrl="~/Login/LoginForm.aspx"  CssClass="button booking" Height="50px" Width="370px" />

    </div>
</asp:Content>

