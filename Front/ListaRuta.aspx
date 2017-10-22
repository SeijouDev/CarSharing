<%@ Page Title="Rutas" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="ListaRuta.aspx.cs" Inherits="Front.ListaRuta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 

    <h1>Mis rutas</h1>

    <div class="field">
        <div class="control" style="text-align: center; margin-top: 1rem">
            <a style="text-decoration: underline; color: #1496ed" href="Ruta.aspx">Crear rutas</a>
        </div>
    </div>

    
    <asp:gridview id="ListaRutasGv" autogeneratecolumns="false"  runat="server">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
        </Columns>
    </asp:gridview>

</asp:Content>