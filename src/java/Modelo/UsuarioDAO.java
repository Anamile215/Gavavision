
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UsuarioDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Usuario validar(String Usuario, String Contraseña){
      Usuario em=new Usuario();
      String sql="select * from usuario where Usuario=? and Contraseña=?";
      try{
          con=cn.Conexion();
          ps=con.prepareStatement(sql);
          ps.setString(1, Usuario);
          ps.setString(2, Contraseña);
          rs=ps.executeQuery();
          while(rs.next()){
              em.setUsuario(rs.getString("Usuario"));
              em.setContraseña(rs.getString("Contraseña"));
              
          }
      }catch (Exception e){   
      }
      return em;
    }

}
