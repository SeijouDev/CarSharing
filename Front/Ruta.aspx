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
    <asp:TextBox runat="server" ID="DireccionInicio" CssClass="form-control" MaxLength="20"></asp:TextBox>
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
    <asp:Label runat="server">Vehiculo*</asp:Label>
    <asp:DropDownList ID="VehiculoDropdown" runat="server">
        <asp:ListItem Enabled="true" Value="Default">--</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator InitialValue="Default" id="RequiredFieldValidator8" runat="server" ControlToValidate="VehiculoDropdown" ErrorMessage="Por favor seleccione un vehículo."  ForeColor="Red" />

    <div id="map" style="width:1000px; height:500px"></div>

    <asp:HiddenField ID="hdlatIni" runat="server" />
    <asp:HiddenField ID="hdlngIni" runat="server" />
    <asp:HiddenField ID="hdlatFin" runat="server" />
    <asp:HiddenField ID="hdlngFin" runat="server" />

    <br />
    <p id="lng" runat="server">lng: </p>

    <br />

     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKokH7uxbcyd1r6n0qrz1ILDv988Qhxpg &callback=initMap"  async defer></script>

    <script>

        function initMap() {
            var map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 4.6295007, lng: -74.0722461},
                zoom: 15
            });

            var myLatlng = new google.maps.LatLng(4.6295007, -74.0722461);
            var markerInicio = new google.maps.Marker({
                position: myLatlng,
                map: map, 
                draggable: true
            });
            
            var markerFin = new google.maps.Marker({
                position: myLatlng,
                map: map,
                draggable: true
            });

            google.maps.event.addListener(markerInicio, 'dragend', function (evt) {

                document.getElementById("MainContent_hdlatIni").innerHTML = evt.latLng.lng();
                document.getElementById("MainContent_hdlngIni").innerHTML = evt.latLng.lat();

                var url = "http://nominatim.openstreetmap.org/reverse?format=json&lat=" + evt.latLng.lat() + "&lon=" + evt.latLng.lng() + "&zoom=18&addressdetails=1";

                $.ajax({
                    type: "GET",
                    url: url,
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                    complete: function (jqXHR, status) {
                        let j = JSON.parse(jqXHR.responseText);
                        console.log(j.display_name);
                        document.getElementById("MainContent_DireccionInicio").value = j.display_name;
                    }
                    
                });

                
                console.log(url);
            });


            google.maps.event.addListener(markerFin, 'dragend', function (evt) {

                document.getElementById("MainContent_hdlatFin").innerHTML = evt.latLng.lng();
                document.getElementById("MainContent_hdlngFin").innerHTML = evt.latLng.lat();
                var url = "http://nominatim.openstreetmap.org/reverse?format=json&lat=" + evt.latLng.lat() + "&lon=" + evt.latLng.lng() + "&zoom=18&addressdetails=1";

                $.ajax({
                    type: "GET",
                    url: url,
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                    complete: function (jqXHR, status) {
                        let j = JSON.parse(jqXHR.responseText);
                        console.log(j.display_name);
                        document.getElementById("MainContent_DireccionDestino").value = j.display_name;
                    }
                });

            });

           
        }

       

    </script>

   


    <br />
    <br />
    <asp:Label ID="Result" runat="server" Visible="false"/>
    <br />

    <asp:Button runat="server" ID="submit_form" Text="Guardar" CssClass="btn btn-success" OnClick="submit_form_Click"/>
    <br />


</asp:Content>