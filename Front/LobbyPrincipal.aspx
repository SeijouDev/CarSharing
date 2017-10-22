<%@ Page Title="Página principal" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="LobbyPrincipal.aspx.cs" Inherits="Front.LobbyPrincipal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label runat="server" ID="labelSaludo">Bienvenido, </asp:Label>

    <div class="field">
        <div class="control" style="text-align: center; margin-top: 1rem">
            <a style="text-decoration: underline; color: #1496ed" href="Ruta.aspx">Mis rutas</a>
        </div>
    </div>

    <% if( Convert.ToInt32(Session["rol"]) == 0) { %>       
        <div class="field">
            <div class="control" style="text-align: center; margin-top: 1rem">
                <a style="text-decoration: underline; color: #1496ed" href="ListaVehiculo.aspx">Mis vehículos</a>
            </div>
        </div>    
    <% } %>
     

     <div class="field">
        <div class="control" style="text-align: center; margin-top: 1rem">
            <asp:Button ID="btn_logout" runat="server" Text="Cerrar sesión" OnClick="btn_logout_Click"/>
        </div>
    </div>
</asp:Content>