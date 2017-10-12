using Entities;
using System;
using System.Collections.Generic;
using System.Data;

namespace DataAccess
{
    public class ORMVehiculo
    {

        public string Insertar(Vehiculo v)
        {
            var con = new Conexion();
            con.Conectar();

            var query = $"INSERT INTO vehiculo (marca,linea,placa,color,ciudad_placa,modelo,tipo_combustible,clase_vehiculo,vacantes,foto,eliminado) " +
                $"VALUES ('{v.Marca}','{v.Linea}','{v.Placa}','{v.Color}','{v.CiudadPlaca}',{v.Modelo},'{v.TipoCombustible}','{v.ClaseVehiculo}',{v.Vacantes},'{v.Foto}'0)";

            string res = con.EjecutarQuery(query);

            Console.WriteLine(query);

            con.Desconectar();

            return res;

        }

        public List<Vehiculo> Consultar(string placa = "")
        {
            var con = new Conexion();
            con.Conectar();

            var query = "SELECT marca,linea,placa,color,ciudad_placa, modelo, tipo_combustible, clase_vehiculo, vacantes, foto FROM vehiculo WHERE eliminado = 0 ";

            if (!string.IsNullOrEmpty(placa))
                query += $"AND placa = '{placa}'";

            var dataTable = con.Consultar(query);
            var lista = new List<Vehiculo>();

            if (dataTable != null)
            {
                foreach (DataRow row in dataTable.Rows)
                {
                    lista.Add(
                        new Vehiculo {
                            Marca = row["marca"].ToString(),
                            Linea = row["linea"].ToString(),
                            Placa = row["placa"].ToString(),
                            Color = row["color"].ToString(),
                            CiudadPlaca = row["ciudad_placa"].ToString(),
                            Modelo = Convert.ToInt32(row["modelo"].ToString()),
                            TipoCombustible = row["tipoCombustible"].ToString(),
                            ClaseVehiculo = row["clase_vehiculo"].ToString(),
                            Vacantes = Convert.ToInt32(row["vacantes"].ToString()),
                            Foto = row["foto"].ToString()
                        }
                    );
                }
            }

            con.Desconectar();

            return lista;
        }

        public string Actualizar(Vehiculo v)
        {
            var con = new Conexion();
            con.Conectar();

            var query = $"UPDATE vehiculo SET marca = '{v.Marca}', linea= '{v.Linea}', placa= '{v.Placa}', color= '{v.Color}', ciudad_placa= '{v.CiudadPlaca}' " +
                $"modelo= {v.Modelo}, tipoCombustible= '{v.TipoCombustible}', clase_vehiculo= '{v.ClaseVehiculo}' , vacantes= {v.Vacantes} " +
                $" WHERE placa = '{v.Placa}' AND eliminado = 0";

            string res = con.EjecutarQuery(query);

            Console.WriteLine(query);

            con.Desconectar();

            return res;
        }

        public string Eliminar(Vehiculo v = null, string placa = "")
        {
            var res = string.Empty;

            if (v != null || !string.IsNullOrEmpty(placa))
            {
                var con = new Conexion();
                con.Conectar();
                var query = $"UPDATE vehiculo SET eliminado = {1} ";

                query += (v != null) ? $"WHERE placa = '{v.Placa}'" : $"WHERE placa = '{placa}'";

                res = con.EjecutarQuery(query);

                Console.WriteLine(query);

                con.Desconectar();
            }
            else
                res = "Eliminación requiere al menos un parametro.";

            return res;
        }
    }
}
