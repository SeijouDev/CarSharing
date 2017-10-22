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

            var coor_inicio  = $"{r.PuntoInicio.Latitud}:{r.PuntoInicio.Longitud}";
            var coor_destino = $"{r.PuntoFinal.Latitud}:{r.PuntoFinal.Longitud}";

            var query = $"INSERT INTO ruta (fk_prestador,nombre, direccion_inicio, coordenadas_inicio, direccion_destino, coordenadas_destino ,eliminado) " +
                $"VALUES ({r.FkPrestador} ,'{r.Nombre}', '{r.PuntoInicio.Direccion}', '{coor_inicio}', '{r.PuntoFinal.Direccion}', '{coor_destino}' ,0)";

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

            var coor_inicio = $"{r.PuntoInicio.Latitud}:{r.PuntoInicio.Longitud}";
            var coor_destino = $"{r.PuntoFinal.Latitud}:{r.PuntoFinal.Longitud}";

            var query = $"UPDATE ruta SET direccion_inicio = '{r.PuntoInicio.Direccion}', coordenadas_inicio = '{coor_inicio}' , " +
                 $"direccion_destino = '{r.PuntoFinal.Direccion}', coordenadas_destino = '{coor_destino}' " +
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
