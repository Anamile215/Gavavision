
package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class tercerosDAO {

    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
  
    
    //operaciones
    
    public List listar(){
        String sql="select * from datos_contacto";
        List<terceros>lista=new ArrayList<>();
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
            terceros ter=new terceros();
              ter.setIdDatos(rs.getInt("idDatos")); 
              ter.setNombres(rs.getString("Nombres"));
              ter.setNit(rs.getString("Nit"));
              ter.setDireccion(rs.getString("Direccion"));
              ter.setCorreo(rs.getString("Correo"));
              lista.add(ter);             
            } 
        }catch (Exception e){      
        }
        return lista; 
    }
    
      public int agregar(terceros ter){
        String sql="insert into datos_contacto(Nombres, Nit, Direccion, Correo) values(?,?,?,?)";
       try{
        con=cn.Conexion();
        ps=con.prepareStatement(sql);
        ps.setString(1,ter.getNombres());
        ps.setString(2,ter.getNit());
        ps.setString(3, ter.getDireccion());
        ps.setString(4,ter.getCorreo());
        ps.executeUpdate();
    } catch (Exception e){   
    }
     return r;      
  } 
       
      public terceros listarIdDatos(int idDatos){
          terceros ter=new terceros();
          String sql="select * from datos_contacto where IdDatos="+idDatos;
          try {
              con=cn.Conexion();
              ps=con.prepareStatement(sql);
              rs=ps.executeQuery();
              while (rs.next()) {
              ter.setIdDatos(rs.getInt("idDatos")); 
              ter.setNombres(rs.getString("Nombres"));
              ter.setNit(rs.getString("Nit"));
              ter.setDireccion(rs.getString("Direccion"));
              ter.setCorreo(rs.getString("Correo"));    
              }
          } catch (Exception e) {
          }
        return ter;
      }
      
      
      
      
 
      public int actualizar(terceros ter){
       String sql="update datos_contacto set Nombres=?, Nit=?, Direccion=?, Correo=? where idDatos=?";
       try{
        con=cn.Conexion();
        ps=con.prepareStatement(sql);
        ps.setString(1,ter.getNombres());
        ps.setString(2,ter.getNit());
        ps.setString(3, ter.getDireccion());
        ps.setString(4,ter.getCorreo());
        ps.setInt(5, ter.getIdDatos());
        ps.executeUpdate();
    } catch (Exception e){   
    }
     return r;
    }
    
      public void delete(int idDatos){
        String sql="delete from datos_contacto where IdDatos="+idDatos;
          try {
              con=cn.Conexion();
              ps=con.prepareStatement(sql);
              ps.executeUpdate();
          } catch (Exception e) {
          }
   
    }

}
