using DataAccess;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessLogic
{
    public class Controlador
    {
        public static bool ValidarNombreUsuario(string usuario)
        {
            return string.IsNullOrEmpty(usuario) ? false : Validacion.UsuarioExiste(usuario);
        }

        public static bool ValidarNuevoUsuario(Persona p)
        {
            var result = false;
            var date = DateTime.Parse(p.FechaNacimiento);

            if (GetAge(date) >= 18)
                result = true;

            return result; 
        }

        public static string CrearPasajero(Pasajero p)
        {
            var db = new ORMPasajero();
            return db.Insertar(p);
        }

        public static string CrearPrestador(Prestador p)
        {
            var db = new ORMPrestador();
            return db.Insertar(p);
        }

        public static int GetAge(DateTime birthday)
        {
            DateTime now = DateTime.Today;
            int age = now.Year - birthday.Year;
            if (now < birthday.AddYears(age)) age--;
            return age;
        }

        public static Pasajero LoginPasajero(string usuario, string clave)
        {
            return Validacion.LoginPasajero(usuario, clave);
        }

        public static Prestador LoginPrestador(string usuario, string clave)
        {
            return Validacion.LoginPrestador(usuario, clave);
        }
    }
}
