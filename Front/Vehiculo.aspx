<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Nuevo vehículo" AutoEventWireup="true" CodeBehind="Vehiculo.aspx.cs" Inherits="Front.Vehiculo" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 

    <h2>Nuevo vehículo</h2>
    <br />

    <br />
    <asp:Label runat="server">Marca*</asp:Label>
    <asp:TextBox runat="server" ID="Marcatx" CssClass="form-control"  ValidationGroup="vg1" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ValidationGroup="vg1" ControlToValidate="Marcatx" ErrorMessage="Por favor ingrese una marca valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Linea*</asp:Label>
    <asp:TextBox runat="server" ID="Lineatx" CssClass="form-control"  ValidationGroup="vg1" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator2"  ValidationGroup="vg1" runat="server" ControlToValidate="Lineatx" ErrorMessage="Por favor ingrese una linea valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Placa*</asp:Label>
    <asp:TextBox runat="server" ID="Placatx" CssClass="form-control"  ValidationGroup="vg1" MaxLength="10" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator3"  ValidationGroup="vg1" runat="server" ControlToValidate="Placatx" ErrorMessage="Por favor ingrese una placa valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Color*</asp:Label>
    <asp:TextBox runat="server" ID="Colortx" CssClass="form-control"   ValidationGroup="vg1" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator4"  ValidationGroup="vg1" runat="server" ControlToValidate="Colortx" ErrorMessage="Por favor ingrese un color valido."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Ciudad placa*</asp:Label>
    <asp:TextBox runat="server" ID="CiudadPtx" CssClass="form-control"  ValidationGroup="vg1" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"  ValidationGroup="vg1" ControlToValidate="CiudadPtx" ErrorMessage="Por favor ingrese una ciudad valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Modelo*</asp:Label>
    <asp:TextBox runat="server" placeholder="aaaa" ID="Modelotx"  ValidationGroup="vg1" CssClass="form-control" MaxLength="4" TextMode="Number" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"  ValidationGroup="vg1" ControlToValidate="Modelotx" ErrorMessage="Por favor ingrese un modelo valido."  ForeColor="Red" />

    <br />
    <asp:Label  ValidationGroup="vg1" runat="server">Tipo combustible*</asp:Label>
    <asp:DropDownList  ValidationGroup="vg1" ID="TipoCombustibletx" runat="server">
        <asp:ListItem Enabled="true" Value="Default">--</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Gasolina">Gasolina</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Gas">Gas</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Gaso-Gas">Gasolina - Gas</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator  ValidationGroup="vg1" InitialValue="Default" id="RequiredFieldValidator7" runat="server" ControlToValidate="TipoCombustibletx" ErrorMessage="Por favor seleccione el tipo de combustible."  ForeColor="Red" />

    <br />
    <asp:Label   ValidationGroup="vg1" runat="server">Tipo vehículo*</asp:Label>
        <asp:DropDownList   ValidationGroup="vg1" ID="TipoVehiculotx" runat="server">
        <asp:ListItem Enabled="true" Value="Default">--</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Automovil">Automóvil</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Camioneta">Camioneta</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Moto">Moto</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator  ValidationGroup="vg1" InitialValue="Default" id="RequiredFieldValidator8" runat="server" ControlToValidate="TipoVehiculotx" ErrorMessage="Por favor seleccione el tipo de combustible."  ForeColor="Red" />

    <br />
    <asp:Label   ValidationGroup="vg1" runat="server">Vacantes*</asp:Label>
    <asp:TextBox  ValidationGroup="vg1" runat="server" ID="Vacantestx" CssClass="form-control" MaxLength="1" TextMode="Number" ></asp:TextBox>
    <asp:RequiredFieldValidator   ValidationGroup="vg1" id="RequiredFieldValidator9" runat="server" ControlToValidate="Vacantestx" ErrorMessage="Por favor ingrese un número valido de vacantes"  ForeColor="Red" />

    <br />
    <br />
    <asp:Label ID="Result"  ValidationGroup="vg1" runat="server" Visible="false"/>
    <br />

    <asp:Button runat="server"  ValidationGroup="vg1" ID="submit_form" Text="Guardar" CssClass="btn btn-success" OnClick="submit_form_Click"/>
    <br />

     <asp:Button runat="server" ID="btnBack" Text="Volver" CssClass="btn btn-success" OnClick="back_click"/>


</asp:Content>