<%@ Page Title="Página principal" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="LobbyPrincipal.aspx.cs" Inherits="Front.LobbyPrincipal" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <nav class="navbar is-black" role="navigation" aria-label="dropdown navigation">
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

    <section class="hero is-dark is-large">
  <div class="hero-body">
    <div class="container">
    
      <h2 class="title" style="padding: 10px; margin: 5px auto">
          <a style="text-decoration: underline; padding: 5%;" href="Ruta.aspx">
              Mis Rutas
          </a>
      </h2>
        
     <% if( Convert.ToInt32(Session["rol"]) == 0) { %>       
        
            <h2 class="title" style="padding: 10px; margin: 5px auto">
                <a style="text-decoration: underline;" href="ListaVehiculo.aspx">
                    Mis Vehículos
                </a>
            </h2>
     <% } %>

    </div>
  </div>
</section>

</asp:Content>