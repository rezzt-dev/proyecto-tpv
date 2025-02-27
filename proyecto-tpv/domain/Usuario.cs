using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using proyecto_tpv.persistence.model;

namespace proyecto_tpv.domain
{
  public class Usuario
  {
    private int _id;
    private string _nombre;
    private string _usuario;
    private string _password;
    private string _rol;

    private List<Usuario> _listaUsuarios;
    private ManageUsuarios mu;

    public Usuario() => mu = new ManageUsuarios();

    public Usuario(string nombre, string usuario, string password, string rol)
    {
      mu = new ManageUsuarios();
      _id = mu.getLastId(this);
      _nombre = nombre;
      _usuario = usuario;
      _password = password;
      _rol = rol;
    }

    public Usuario(int id, string nombre, string usuario, string password, string rol)
    {
      mu = new ManageUsuarios();
      _id = id;
      _nombre = nombre;
      _usuario = usuario;
      _password = password;
      _rol = rol;
    }

    public Usuario(string usuario, string password)
    {
      mu = new ManageUsuarios();
      _id = mu.getLastId(this);
      _nombre = null;
      _usuario = usuario;
      _password = password;
      _rol = null;
    }

    public List<Usuario> getUsuarioList()
    {
      _listaUsuarios = mu.leerUsuarios();
      return _listaUsuarios;
    }

    public void insertar()
    {
      mu.insertarUsuario(this);
    }

    public void modificar()
    {
      mu.modificarUsuario(this);
    }

    public void eliminar()
    {
      mu.eliminarUsuario(this);
    }

    public int Id { get => _id; set => _id = value; }
    public string Nombre { get => _nombre; set => _nombre = value; }
    public string NombreUsuario { get => _usuario; set => _usuario = value; }
    public string Password { get => _password; set => _password = value; }
    public string Rol { get => _rol; set => _rol = value; }
  }
}