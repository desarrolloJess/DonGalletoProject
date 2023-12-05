
package Modelo;

import ConexionBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ServiceUsuarios {
    
    //Método Insertar en users ---- 17 de Septiembte 2023.
    public String insertar(String nombre, String contra, String correo, String usuario) throws SQLException {
        try (Connection cn = new Conexion().ConexionBD();
             PreparedStatement ps = cn.prepareStatement("INSERT INTO users(completo, contra, correo, usuario,tipoUsuario) VALUES (?, ?, ?, ?,?)")) {

            ps.setString(1, nombre);
            ps.setString(2, contra);
            ps.setString(3, correo);
            ps.setString(4, usuario);
            ps.setString(5, "2");

            int filasAfectadas = ps.executeUpdate();
            return (filasAfectadas > 0) ? "Exito" : "Error";
            
        } catch (SQLException e) {
            System.out.println("Error Service: " + e);
            return "Error";
        }
    }
    //Método Buscar en users ---- 17 de Septiembte 2023.
    public String buscar(String usuario) throws SQLException {
        try (Connection cn = new Conexion().ConexionBD();
             PreparedStatement ps = cn.prepareStatement("SELECT * FROM users WHERE nameUser = ?;")) {
            
            ps.setString(1, usuario);
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next() ? "Exito" : "Error";
            }            
            
        } catch (SQLException e) {
            System.out.println("Error Service: " + e);
            return "Error";
        }
    }
    //Método para verificar credenciales de acceso
    public String validarUsuario(String usuario, String contra) throws SQLException {
    try (Connection cn = new Conexion().ConexionBD();
         PreparedStatement ps = cn.prepareStatement("SELECT usuario,contra,tipoUsuario FROM users WHERE usuario = ? AND contra = ?;" )) {
        
        ps.setString(1, usuario);
        ps.setString(2, contra);

        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                int tipoUsuario = rs.getInt("tipoUsuario");
                if (tipoUsuario == 1) {
                    return "Admin";
                } else if (tipoUsuario == 2) {
                    return "Alumno";
                }
            }
            return "Exito"; // Si el usuario existe pero su tipo no es 1 ni 2
        }            
        
    } catch (SQLException e) {
        System.out.println("Error Service: " + e);
        return "Error";
    }
}

    
     public String buscarUsuario(String usuario) throws SQLException {
    try (Connection cn = new Conexion().ConexionBD();
         PreparedStatement ps = cn.prepareStatement("SELECT usuario FROM users WHERE usuario = ?;" )) {
        
        ps.setString(1, usuario);
        
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                return "Exito"; // Si el usuario existe pero su tipo no es 1 ni 2
            }else{
                return "No encontrado";
            }
            
        }            
        
    } catch (SQLException e) {
        System.out.println("Error Service: " + e);
        return "Error Buscar";
    }
}


}
