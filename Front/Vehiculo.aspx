<%@ Page Language="C#" MasterPageFile="~/Site.Master" Title="Nuevo vehículo" AutoEventWireup="true" CodeBehind="Vehiculo.aspx.cs" Inherits="Front.Vehiculo" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 

    <h2>Nuevo vehículo</h2>
    <br />

    <br />
    <asp:Label runat="server">Marca*</asp:Label>
    <asp:TextBox runat="server" ID="Marcatx" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="Marcatx" ErrorMessage="Por favor ingrese una marca valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Linea*</asp:Label>
    <asp:TextBox runat="server" ID="Lineatx" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="Lineatx" ErrorMessage="Por favor ingrese una linea valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Placa*</asp:Label>
    <asp:TextBox runat="server" ID="Placatx" CssClass="form-control" MaxLength="10" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="Placatx" ErrorMessage="Por favor ingrese una placa valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Color*</asp:Label>
    <asp:TextBox runat="server" ID="Colortx" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="Colortx" ErrorMessage="Por favor ingrese un color valido."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Ciudad placa*</asp:Label>
    <asp:TextBox runat="server" ID="CiudadPtx" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="CiudadPtx" ErrorMessage="Por favor ingrese una ciudad valida."  ForeColor="Red" />
 
    <br />
    <asp:Label runat="server">Modelo*</asp:Label>
    <asp:TextBox runat="server" placeholder="aaaa" ID="Modelotx" CssClass="form-control" MaxLength="4" TextMode="Number" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="Modelotx" ErrorMessage="Por favor ingrese un modelo valido."  ForeColor="Red" />

    <br />
    <asp:Label runat="server">Tipo combustible*</asp:Label>
    <asp:DropDownList ID="TipoCombustibletx" runat="server">
        <asp:ListItem Enabled="true" Value="Default">--</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Gasolina">Gasolina</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Gas">Gas</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Gaso-Gas">Gasolina - Gas</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator InitialValue="Default" id="RequiredFieldValidator7" runat="server" ControlToValidate="TipoCombustibletx" ErrorMessage="Por favor seleccione el tipo de combustible."  ForeColor="Red" />

    <br />
    <asp:Label runat="server">Tipo vehículo*</asp:Label>
        <asp:DropDownList ID="TipoVehiculotx" runat="server">
        <asp:ListItem Enabled="true" Value="Default">--</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Automovil">Automóvil</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Camioneta">Camioneta</asp:ListItem>
        <asp:ListItem Enabled="true" Value="Moto">Moto</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator InitialValue="Default" id="RequiredFieldValidator8" runat="server" ControlToValidate="TipoVehiculotx" ErrorMessage="Por favor seleccione el tipo de combustible."  ForeColor="Red" />

    <br />
    <asp:Label runat="server">Vacantes*</asp:Label>
    <asp:TextBox runat="server" ID="Vacantestx" CssClass="form-control" MaxLength="1" TextMode="Number" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="Vacantestx" ErrorMessage="Por favor ingrese un número valido de vacantes"  ForeColor="Red" />

    <br />
    <br />
    <asp:Label ID="Result" runat="server" Visible="false"/>
    <br />

    <asp:Button runat="server" ID="submit_form" Text="Guardar" CssClass="btn btn-success" OnClick="submit_form_Click"/>
    <br />

</asp:Content>