using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front
{
    public partial class Prestadores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_form_Click(object sender, EventArgs e)
        {
           
            var p = new Prestador(
                name.Text,
                lastname.Text,
                Id.Text,
                Mail.Text,
                City.Text,
                Birthdate.Text,
                Phone.Text,
                Username.Text,
                Password.Text
            );

            /*var orm = new ORMPrestador();
            var res = orm.Insertar(p);


            result.Text = res.ToString();*/
            
        }
    }
}