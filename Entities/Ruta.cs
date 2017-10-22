using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Ruta
    {
        public string Nombre { get; set; }
        public Ubicacion PuntoInicio { get; set; }
        public Ubicacion PuntoFinal { get; set; }
        public List<Ubicacion> Trayecto { get; set; }
        public List<int> DiasDisponible { get; set; }
        public int FkPrestador { get; set; }

        public Ruta(string nombre, string direccionInicio, double latInicio, double lngInicio, string direccionDestino,  double latFin, double lngFin, int fkPrestador)
        {
            this.Nombre = nombre;
            this.PuntoInicio = new Ubicacion { Latitud = latInicio, Longitud = lngInicio, Direccion = direccionInicio };
            this.PuntoFinal = new Ubicacion { Latitud = latFin, Longitud = lngInicio, Direccion = direccionDestino };
            this.Trayecto = new List<Ubicacion>();
            this.DiasDisponible = new List<int>();
            this.FkPrestador = fkPrestador;
        }
    }
}
