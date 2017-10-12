<%@ Page Title="Prestadores" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prestadores.aspx.cs" Inherits="Front.Prestadores" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Crear prestador</h2>

    <asp:Label runat="server">Nombre*</asp:Label>
    <asp:TextBox runat="server" ID="name" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="name"   ErrorMessage="Por favor ingrese un nombre valido."  ForeColor="Red" />
 
    <br />

    <asp:Label runat="server">Apellido*</asp:Label>
    <asp:TextBox runat="server" ID="lastname" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ControlToValidate="lastname"   ErrorMessage="Por favor ingrese un apellido valido."  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Cedula*</asp:Label>
    <asp:TextBox runat="server" ID="Id" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ControlToValidate="Id" ErrorMessage="Por favor ingrese una cedula valida."  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Correo*</asp:Label>
    <asp:TextBox runat="server" ID="Mail" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ControlToValidate="Mail" ErrorMessage="Por favor ingrese un correo valido."  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Ciudad Residencia*</asp:Label>
    <asp:TextBox runat="server" ID="City" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ControlToValidate="City" ErrorMessage="Por favor ingrese una ciudad de residencia valida."  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Fecha nacimiento*</asp:Label>
    <asp:TextBox ID="Birthdate" runat="server" CssClass="form-control" textMode="Date" placeholder="aaaa/mm/dd"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ControlToValidate="Birthdate" ErrorMessage="Por favor ingrese una fecha de nacimiento valida."  ForeColor="Red" />
    <br />


    <asp:Label runat="server">Teléfono*</asp:Label>
    <asp:TextBox runat="server" ID="Phone" CssClass="form-control" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server" ControlToValidate="Phone" ErrorMessage="Por favor ingrese un teléfono valido"  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Usuario*</asp:Label>
    <asp:TextBox runat="server" ID="Username" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" ControlToValidate="Username" ErrorMessage="Por favor ingrese un nombre de usuario valido."  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Clave*</asp:Label>
    <asp:TextBox runat="server" ID="Password" CssClass="form-control" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="Password" ErrorMessage="Por favor ingrese una clave valida."  ForeColor="Red" />
    <br />

    <asp:Label runat="server">Confirmación clave*</asp:Label>
    <asp:TextBox runat="server" ID="Password2" CssClass="form-control" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ControlToValidate="Password2" ErrorMessage="Por favor ingrese una cedula valida."  ForeColor="Red" />
    <br />

    <asp:Button runat="server" ID="submit_form" Text="Guardar" CssClass="btn btn-success"/>
    <br />


</asp:Content>



