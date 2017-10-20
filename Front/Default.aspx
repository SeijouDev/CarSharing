<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Front._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>CarSharing</h2>  
    <asp:TextBox ID="Username"  runat="server" CssClass="form-control" Textmode="SingleLine"  Placeholder="Usuario" ValidationGroup="vg1" />
     <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ControlToValidate="Username" ValidationGroup="vg1"  ErrorMessage="Por favor ingrese el usuario"  ForeColor="Red" />
  
    <asp:TextBox ID="Pass" runat="server" CssClass="form-control" Textmode="Password"  ValidationGroup="vg1" Placeholder="Contraseña"/>
     <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="Pass" ValidationGroup="vg1"  ErrorMessage="Por favor ingrese la contraseña"  ForeColor="Red" />
  
    <br />

    <asp:Label ID="login_result" runat="server" Visible="false"/>
     <br />
    <asp:Button ID="loginBtn" runat="server" CssClass="btn btn-success" Text="Ingresar" ValidationGroup="vg1" OnClick="Validate_login" ></asp:Button>
    <asp:LinkButton ID="register_link" Text="Registrarse" runat="server" CssClass="btn btn-link" OnClick="Register_link_click"></asp:LinkButton>
</asp:Content>
