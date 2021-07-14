<%@ Page Title="" Language="C#" MasterPageFile="../Masterpage/MasterPageLogin.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="Login_LoginPage" %>


<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="mid">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="img">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Image ID="Image1" runat="server" Height="550px" Width="1400px" CssClass="img" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>






