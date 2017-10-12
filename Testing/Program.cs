using DataAccess;
using Entities;
using System;

namespace Testing
{
    class Program
    {
        static void Main(string[] args)
        {
           
            var p = new Prestador("Marlon","Castillo","1017107702","mcastillopr@uninpahu.edu.co","Bogotá", DateTime.Now.ToString("yyyy/MM/dd") , "3937058","mcastillo","950713");
            var q = new Prestador("Kevin", "Rodriguez", "123456", "kevyder@uninpahu.edu.co", "Bogotá", DateTime.Now.ToString("yyyy/MM/dd"), "3937058", "krodriguez", "123456");

            var ormPrestador = new ORMPrestador();

            /*var res = ormPrestador.Insertar(p);
            Console.WriteLine("Result -> " + res);

            res = ormPrestador.Insertar(q);
            Console.WriteLine("Result -> " + res);*/

           /* var res = ormPrestador.Consultar();
            res.ForEach( pre => Console.WriteLine(pre.Nombre));*/

            /*p.Nombre = "Juanito";
            var res = ormPrestador.Actualizar(p);*/

            var res = ormPrestador.Eliminar(null, q.Cedula); 

            Console.WriteLine(res);
            



            Console.ReadKey();

        }
    }
}
