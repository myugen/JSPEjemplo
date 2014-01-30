/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ConsultaJSP.datos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
/**
 *
 * @author Usuario
 */
public class AltaMatricula {
    public static boolean setAlumno(int codigo, String nombre, String apellidos){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/matricula?zeroDateTimeBehavior=convertToNull", "root", "");
            PreparedStatement st = conexion.prepareStatement("INSERT INTO alumno(codigo, nombre, apellidos) VALUES(?,?,?)");
            st.setInt(1, codigo);
            st.setString(2, nombre);
            st.setString(3, apellidos);
            st.executeUpdate();
            st.close();
            conexion.close();
            
        }
        catch(Exception ex){
            return false;
        }
        return true;
    }
}
