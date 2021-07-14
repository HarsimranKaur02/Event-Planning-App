<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/MasterPageLogin.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Login_AboutUs" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
    <div class="about" >
            <h1>Our Motto</h1>
        <br />
            <h2>"Life is an event.Make it memorable."</h2>
            <h1>About Us</h1>
        <br />
            <p >
                Life Events Ltd is an event logistics and marketing company which was formed back in 2013. The company offers A-Z event planning 
                services from a team of experienced and energetic event planners, suppliers, venues and more. One of the main reasons behind the
                success of Life Events is the fact that the team is fully dedicated to its clients! This ensures that our clients list,
                which is constantly growing, make regular use of our services.
            </p>

            <p >
                We’re a dedicated, event planner firm and love what we do! As an event planner, event production and logistics are a big part of our 
                integrated offerings. Our aim is to provide customers with the best resources needed to create astounding and memorable events.
            </p>
        </div>
</asp:Content>


<asp:Content ID="Content4" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .about{
           background-image:url(../Images/6.jpg);
           background-size:cover;
           width:90%; 
           height:700px;
           font-family: "Lucida Grande";
           padding: 20px 100px ;
           margin-left: 60px;
           text-align:center;
        }

            .about h2 {
               padding-bottom:10px;   
            }

            .about h1{
                
            }
            .about p{
                font-size: 20px;
            }

            .about h2{
                font-weight:normal;
            }

    </style>
</asp:Content>


