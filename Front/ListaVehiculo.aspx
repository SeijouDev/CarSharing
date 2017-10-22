<%@  Page Title="Vehículos" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="ListaVehiculo.aspx.cs" Inherits="Front.ListaVehiculo" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Mis vehículos</h1>
   
    <div class="field">
        <div class="control" style="text-align: center; margin-top: 1rem">
            <a style="text-decoration: underline; color: #1496ed" href="Vehiculo.aspx">Crear vehículo</a>
        </div>
    </div>


    <asp:gridview id="ListaVehiculosGv" autogeneratecolumns="false"  runat="server">
        <Columns>
            <asp:BoundField HeaderText="Marca" DataField="Marca" />
            <asp:BoundField HeaderText="Linea" DataField="Linea" />
            <asp:BoundField HeaderText="Placa" DataField="Placa" />
            <asp:BoundField HeaderText="Color" DataField="Color" />
            <asp:BoundField HeaderText="Ciudad" DataField="CiudadPlaca" />
            <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
            <asp:BoundField HeaderText="Combustible" DataField="TipoCombustible" />
            <asp:BoundField HeaderText="Tipo" DataField="ClaseVehiculo" />
            <asp:BoundField HeaderText="Vacantes" DataField="Vacantes" />
        </Columns>
    </asp:gridview>
    
</asp:Content>
