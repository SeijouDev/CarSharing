using BussinessLogic;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_link_click(object sender, EventArgs e)
        {
            Response.Redirect("Prestadores.aspx");
        }

        protected void Validate_login (object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(Username.Text) && !string.IsNullOrEmpty(Pass.Text))
            {
                var result = false;

                var pasajero = Controlador.LoginPasajero(Username.Text, Pass.Text);

                if (pasajero != null)
                {
                    result = !result;
                }
                else
                {
                    var prestador = Controlador.LoginPrestador(Username.Text, Pass.Text);

                    if (prestador != null)
                        result = !result;

                }

                if (result)
                {
                    login_result.Text = "Buena rata!";
                    login_result.Visible = true;
                }
                else
                {

                    login_result.Text = "Usuario o contraseña incorrectos!";
                    login_result.Visible = true;
                }
            }
            else
            {
                login_result.Text = "Complete todos los campos";
                login_result.Visible = true;
            }
        }

    }
}