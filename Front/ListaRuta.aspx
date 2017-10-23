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
             <asp:TemplateField HeaderText = "Nombre">
                <ItemTemplate>                       
                    <asp:Label ID="NombreRuta" runat="server"  Text='<%# Eval("Nombre")%>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText = "Dirección de inicio">
                <ItemTemplate>                       
                    <asp:Label ID="NombreRuta" runat="server"  Text='<%# Eval("DireccionPuntoInicio")%>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText = "Dirección de destino">
                <ItemTemplate>                       
                    <asp:Label ID="NombreRuta" runat="server"  Text='<%# Eval("DireccionPuntoFinal")%>'></asp:Label>           
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Editar">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkRemove" runat="server"  CommandArgument = '<%# Eval("Nombre")%>' Text = "Editar"></asp:LinkButton>
                </ItemTemplate>                
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Eliminar">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkRemove" runat="server"  CommandArgument = '<%# Eval("Nombre")%>' OnClientClick = "return confirm('¿ Realmente desea eliminar esta ruta ?')" Text = "Eliminar"></asp:LinkButton>
                </ItemTemplate>                
            </asp:TemplateField>
        </Columns>
    </asp:gridview>

    <asp:Button runat="server" ID="btnBack" Text="Volver" CssClass="btn btn-success" OnClick="back_click"/>


</asp:Content>