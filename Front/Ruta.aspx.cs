using BussinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front
{
    public partial class Ruta : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Usuario"] == null)
                Response.Redirect("Default.aspx");

            VehiculoDropdown.DataSource = Controlador.ObtenerVehiculosPorPrestador(Convert.ToInt32(Session["pk"]));
            VehiculoDropdown.DataTextField = "Placa";
            VehiculoDropdown.DataValueField = "Placa";
            VehiculoDropdown.DataBind();
        }

        protected void submit_form_Click(object sender, EventArgs e)
        {

            string msg = "";

            var r = new Entities.Ruta(
                Nombre.Text,
                DireccionInicio.Text, 
                Convert.ToDouble(LatIni.Text.Replace('.',',')), 
                Convert.ToDouble(LngIni.Text.Replace('.', ',')),
                DireccionDestino.Text,
                Convert.ToDouble(LatFin.Text),
                Convert.ToDouble(LngFin.Text),
                Convert.ToInt32(Session["pk"]));

            if (Controlador.ValidarNombreRuta(r.Nombre , Convert.ToInt32(Session["pk"])))            
                msg = (Controlador.CrearRuta(r) == "1") ? "Registro exitoso!" : "Error en el regsitro.";
            else
                msg = "El nombre de la ruta ya existe";

            Result.Text = msg;
            Result.Visible = true;
            
        }
    }
}