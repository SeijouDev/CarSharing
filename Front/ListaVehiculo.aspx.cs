﻿using BussinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front
{
    public partial class ListaVehiculo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var vehiculos = Controlador.ObtenerVehiculosPorPrestador(Convert.ToInt32(Session["pk"]));

            ListaVehiculosGv.DataSource = vehiculos;
            ListaVehiculosGv.DataBind();
        }
    }
}