using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using proyecto_tpv.domain;

namespace proyecto_tpv.views
{
  /// <summary>
  /// Lógica de interacción para LoginWindow.xaml
  /// </summary>
  public partial class LoginWindow : Window
  {
    private Usuario usuario;
    private List<Usuario> listaUsuarios;

    public LoginWindow()
    {
      InitializeComponent();

      usuario = new Usuario();
      listaUsuarios = usuario.getUsuarioList();
    }

    private String encryptPassword (String inputRawPassword)
    {
      using (SHA256 sha256 = SHA256.Create())
      {
        byte[] inputBytes = Encoding.UTF8.GetBytes(inputRawPassword);
        byte[] hashBytes = sha256.ComputeHash(inputBytes);

        StringBuilder builder = new StringBuilder();
        for (int i = 0; i < hashBytes.Length; i++)
        {
          builder.Append(hashBytes[i].ToString("x2"));
        }

        return builder.ToString();
      }
    }

    private void btnCancelar_Click(object sender, RoutedEventArgs e)
    {
      Application.Current.Shutdown();
    }

    private void btnRegistrarse_Click(object sender, RoutedEventArgs e)
    {
      String username = txtUsuario.Text;
      String passwordRaw = txtPassword.Password;

      String passwordHashed = encryptPassword(passwordRaw);


      if (listaUsuarios.Select(u => u.NombreUsuario.Equals(username) && u.Password.Equals(passwordRaw)).FirstOrDefault())
      {
        TPVWindow tpvWindow = new TPVWindow();
        tpvWindow.Show();
        this.Close();
      } else
      {
        System.Windows.MessageBox.Show($"Error al Iniciar Sesion. Usuario o contraseña incorrectos", "Error", MessageBoxButton.OK, MessageBoxImage.Error);

        txtPassword.Password = "";
        txtUsuario.Text = "";
      }
    }
  }
}
