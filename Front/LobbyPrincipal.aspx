<%@ Page Title="Página principal" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="LobbyPrincipal.aspx.cs" Inherits="Front.LobbyPrincipal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <nav class="navbar" role="navigation" aria-label="dropdown navigation">
  <div class="navbar-menu">
    <div class="navbar-start">
      <div class="navbar-item">CarSharing</div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          <asp:Label runat="server" ID="labelSaludo">Bienvenido, </asp:Label>
        </a>

        <div class="navbar-dropdown is-right">
            <asp:linkbutton runat="server" OnClick="btn_logout_Click" CssClass="navbar-item">Cerrar Sesión</asp:linkbutton>
        </div>
      </div>
    </div>
  </div>
</nav>
 
     <div class="field">
        <div class="control" style="text-align: center; margin-top: 1rem">
            <a style="text-decoration: underline; color: #1496ed" href="Ruta.aspx">Crear ruta</a>
        </div>
    </div>
    <div class="field">
        <div class="control" style="text-align: center; margin-top: 1rem">
            <a style="text-decoration: underline; color: #1496ed" href="Vehiculo.aspx">Crear vehículo</a>
        </div>
    </div>
</asp:Content>