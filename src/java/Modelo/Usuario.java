
package Modelo;


public class Usuario {
    int idUsuario;
    String Usuario;
    String Contraseña;

    public Usuario() {
    }

    public Usuario(int idUsuario, String Usuario, String Contraseña) {
        this.idUsuario = idUsuario;
        this.Usuario = Usuario;
        this.Contraseña = Contraseña;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
            
    
}
