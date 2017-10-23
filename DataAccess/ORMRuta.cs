using Entities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class ORMRuta
    {
        public string Insertar(Ruta r)
        {
            var con = new Conexion();
            con.Conectar();
            

            var query = $"INSERT INTO ruta (fk_prestador,nombre, direccion_inicio, coordenadas_inicio, direccion_destino, coordenadas_destino, fk_vehiculo ,eliminado) " +
                $"VALUES ({r.FkPrestador} ,'{r.Nombre}', '{r.DireccionPuntoInicio}', '{r.PuntoInicio}', '{r.DireccionPuntoFinal}', '{r.PuntoFinal}' , {r.FkVehiculo} ,0)";

            string res = con.EjecutarQuery(query);

            Console.WriteLine(query);

            con.Desconectar();

            return res;

        }

        public List<Ruta> ConsultarPorUsuario(int fkUsuario, int rol)
        {
            var con = new Conexion();
            con.Conectar();
            string query = string.Empty;

            if (rol == 0)
                query = $"SELECT nombre, direccion_inicio, coordenadas_inicio, direccion_destino, coordenadas_destino FROM ruta WHERE eliminado = 0 AND fk_prestador = {fkUsuario} ";
            
            var dataTable = con.Consultar(query);
            var lista = new List<Ruta>();

            if (dataTable != null)
            {
                foreach (DataRow row in dataTable.Rows)
                {
                    lista.Add(
                        new Ruta(
                            row["nombre"].ToString(),
                            row["direccion_inicio"].ToString(),
                            Convert.ToDouble(row["coordenadas_inicio"].ToString().Split(':')[0]),
                            Convert.ToDouble(row["coordenadas_inicio"].ToString().Split(':')[1]),
                            row["direccion_destino"].ToString(),
                            Convert.ToDouble(row["coordenadas_destino"].ToString().Split(':')[0]),
                            Convert.ToDouble(row["coordenadas_destino"].ToString().Split(':')[1]),
                            fkUsuario
                        )  
                    );
                }
            }

            con.Desconectar();

            return lista;
        }

        public string Actualizar(Ruta r)
        {
            var con = new Conexion();
            con.Conectar();

            var query = $"UPDATE ruta SET direccion_inicio = '{r.DireccionPuntoInicio}', coordenadas_inicio = '{r.PuntoInicio}' , " +
                 $"direccion_destino = '{r.DireccionPuntoFinal}', coordenadas_destino = '{r.PuntoFinal}' " +
                $" WHERE fk_prestador = '{r.FkPrestador}' AND nombre = '{r.Nombre}' AND eliminado = 0";

            string res = con.EjecutarQuery(query);

            Console.WriteLine(query);

            con.Desconectar();

            return res;
        }

        public string Eliminar(Ruta r )
        {            
            var con = new Conexion();
            con.Conectar();
            var query = $"UPDATE ruta SET eliminado = {1} WHERE fk_prestador = {r.FkPrestador} AND nombre = '{r.Nombre}' ";
           
            var res = con.EjecutarQuery(query);

            Console.WriteLine(query);

            con.Desconectar();
            
            return res;
        }
    }
}
