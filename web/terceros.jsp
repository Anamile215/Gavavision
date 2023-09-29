<%-- 
    Document   : terceros
    Created on : 25/09/2023, 05:38:25 PM
    Author     : ANAMILE
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>terceros</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
    </head>
    <body>
        <div class="d-flex">
        <div class="card col-sm-3">
            <div class="card-body">
                <form action="Controlador?menu=terceros" method="POST">
  
                    <div class="form-group"> 
                        <label>Nombres</label>
                        <input type="text" value="${tercero.getNombres()}" name="txtNombres" class="form-control">
                    </div>
                    
                    <div class="form-group"> 
                        <label>Nit</label>
                        <input type="text" value="${tercero.getNit()}" name="txtNit" class="form-control">
                    </div>
                    
                    <div class="form-group"> 
                        <label>Direccion</label>
                        <input type="text" value="${tercero.getDireccion()}" name="txtDireccion" class="form-control">
                    </div>
                    
                    <div class="form-group"> 
                        <label>Correo</label>
                        <input type="text" value="${tercero.getCorreo()}" name="txtCorreo" class="form-control">
                    </div>
                   
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                </form>
            </div>
        </div>
       </div>
        
                    <div class="col-sm-8" style="margin-top: 30px">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombres</th>
                        <th>Nit</th>
                        <th>Direccion</th>
                        <th>Correo</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    
                    <c:forEach var="ter" items="${terceros}">
                    <tr>
                        <td>${ter.getIdDatos()}</td>
                        <td>${ter.getNombres()}</td>
                        <td>${ter.getNit()}</td>
                        <td>${ter.getDireccion()}</td>
                        <td>${ter.getCorreo()}</td>
                        <td>
                            <a class="btn btn-warning" href="Controlador?menu=terceros&accion=Editar&idDatos=${ter.getIdDatos()}">Editar</a>
                            <a class="btn btn-danger"  href="Controlador?menu=terceros&accion=Delete&idDatos=${ter.getIdDatos()}">Eliminar</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
                
            </table>

        </div>
        
      
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    </body>
</html>
