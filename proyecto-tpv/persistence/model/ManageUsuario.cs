using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataGridPersonas.persistence;
using proyecto_tpv.domain;

namespace proyecto_tpv.persistence.model
{
  public class ManageUsuarios
  {
    private DataTable dataTable;
    private List<Usuario> listaUsuarios;
    int lastId;

    public ManageUsuarios()
    {
      dataTable = new DataTable();
      listaUsuarios = new List<Usuario>();
    }

    public List<Usuario> leerUsuarios()
    {
      Usuario auxUsuario = new Usuario();
      List<Object> lista = DBBroker.obtenerAgente().leer("SELECT * FROM tpv_bar.usuarios");
      foreach (List<Object> aux in lista)
      {
        auxUsuario = new Usuario(Convert.ToInt32(aux[0]), aux[1].ToString(), aux[2].ToString(), aux[3].ToString(), aux[4].ToString());
        listaUsuarios.Add(auxUsuario);
      }

      return listaUsuarios;
    }

    public int getLastId(Usuario usuario)
    {
      List<Object> listaAux;
      listaAux = DBBroker.obtenerAgente().leer("SELECT COALESCE(MAX(id_usuario), 0) FROM tpv_bar.usuarios;");

      foreach (List<Object> aux in listaAux)
      {
        lastId = Convert.ToInt32(aux[0]) + 1;
      }

      return lastId;
    }

    public void insertarUsuario(Usuario usuario)
    {
      DBBroker dbBroker = DBBroker.obtenerAgente();
      dbBroker.modificar("INSERT INTO tpv_bar.usuarios (id_usuario, nombre, usuario, password, rol) VALUES (" +
        usuario.Id + ", '" +
        usuario.Nombre + "', '" +
        usuario.NombreUsuario + "', '" +
        usuario.Password + "', '" +
        usuario.Rol + "');");
    }

    public void modificarUsuario(Usuario usuario)
    {
      DBBroker dbBroker = DBBroker.obtenerAgente();
      dbBroker.modificar("UPDATE tpv_bar.usuarios SET nombre = '" +
        usuario.Nombre + "', usuario = '" +
        usuario.NombreUsuario + "', password = '" +
        usuario.Password + "', rol = '" +
        usuario.Rol + "' WHERE id_usuario = " + usuario.Id + ";");
    }

    public void eliminarUsuario(Usuario usuario)
    {
      DBBroker dbBroker = DBBroker.obtenerAgente();
      dbBroker.modificar("DELETE FROM tpv_bar.usuarios WHERE id_usuario = " + usuario.Id + ";");
    }
  }
}
