using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Ruta
    {
        public Ubicacion PuntoInicio { get; set; }
        public Ubicacion PuntoFinal { get; set; }
        public List<Ubicacion> Trayecto { get; set; }
        public List<int> DiasDisponible { get; set; }
    }
}
