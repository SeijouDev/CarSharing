
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Front._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        html,body {
  font-family: 'Open Sans', serif;
  font-size: 14px;
  font-weight: 300;
}
.hero.is-success {
  background: #F2F6FA;
}
.hero .nav, .hero.is-success .nav {
  -webkit-box-shadow: none;
  box-shadow: none;
}
.box {
  margin-top: 5rem;
}
input {
  font-weight: 300;
}
p {
  font-weight: 700;
}
p.subtitle {
  padding-top: 1rem;
}
.is-large{
    width: 100%;
}
    </style>
  <section class="hero is-success is-fullheight">
    <div class="hero-body">
      <div class="container has-text-centered">
        <div class="column is-4 is-offset-4">
          <h3 class="title has-text-grey">CarSharing</h3>
          <div class="box">
              <div class="field">
                <div class="control">
                	<asp:TextBox ID="Username" runat="server" CssClass="input is-large" Textmode="SingleLine"  Placeholder="Usuario" ValidationGroup="vg1" />
                	<asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server" ControlToValidate="Username" ValidationGroup="vg1"  ErrorMessage="Por favor ingrese el usuario"  ForeColor="Red" />
                </div>
              </div>

              <div class="field">
                <div class="control">
                	<asp:TextBox ID="Pass" runat="server" CssClass="input is-large" Textmode="Password"  ValidationGroup="vg1" Placeholder="Contraseña"/>
                	<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="Pass" ValidationGroup="vg1"  ErrorMessage="Por favor ingrese la contraseña"  ForeColor="Red" />
                </div>
              </div>
              <asp:Button runat="server" CssClass="button is-block is-info is-large" Text="Ingresar" ValidationGroup="vg1" OnClick="Validate_login" ></asp:Button>
            
              <asp:Label Visible="false" ID="login_result" runat="server"></asp:Label>
          </div>
        </div>
      </div>
    </div>
</section>
</asp:Content>
