<%@ Page Title="Nueva ruta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ruta.aspx.cs" Inherits="Front.Ruta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <h2>Nueva Ruta</h2>
    <br />

    <br />
    <asp:Label runat="server">Nombre*</asp:Label>
    <asp:TextBox runat="server" ID="Nombre" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="Nombre" ErrorMessage="Por favor ingrese un nombre valido."  ForeColor="Red" />
 
     <br />
    <asp:Label runat="server">LatIni*</asp:Label>
    <asp:TextBox runat="server" ID="LatIni" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="LatIni" ErrorMessage="latitud ini"  ForeColor="Red" />
 

     <br />
    <asp:Label runat="server">LngIni*</asp:Label>
    <asp:TextBox runat="server" ID="LngIni" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="LngIni" ErrorMessage="LngIni"  ForeColor="Red" />
 

    <br />
    <asp:Label runat="server">Direccion inicio*</asp:Label>
    <asp:TextBox runat="server" ID="DireccionInicio" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="DireccionInicio" ErrorMessage="DireccionInicio"  ForeColor="Red" />
 
     <br />
    <asp:Label runat="server">LatFin*</asp:Label>
    <asp:TextBox runat="server" ID="LatFin" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="LatFin" ErrorMessage="LatFin"  ForeColor="Red" />
 

     <br />
    <asp:Label runat="server">LngFin*</asp:Label>
    <asp:TextBox runat="server" ID="LngFin" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="LngFin" ErrorMessage="LngFin"  ForeColor="Red" />
 

    <br />
    <asp:Label runat="server">Direccion Destino*</asp:Label>
    <asp:TextBox runat="server" ID="DireccionDestino" CssClass="form-control" MaxLength="20" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="DireccionDestino" ErrorMessage="DireccionDestino"  ForeColor="Red" />
 
    <br />
    <br />
    <asp:Label ID="Result" runat="server" Visible="false"/>
    <br />

    <asp:Button runat="server" ID="submit_form" Text="Guardar" CssClass="btn btn-success" OnClick="submit_form_Click"/>
    <br />


</asp:Content>