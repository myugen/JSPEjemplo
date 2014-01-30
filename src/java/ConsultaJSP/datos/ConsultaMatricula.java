/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ConsultaJSP.datos;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
/**
 *
 * @author Usuario
 */
public class ConsultaMatricula {
    public static LinkedList<Contacto> getContactos(){
        LinkedList<Contacto> ListaAlumnos = new LinkedList<Contacto>();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/matricula?zeroDateTimeBehavior=convertToNull", "root", "");
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("select codigo, nombre, apellidos from alumno");
            while(rs.next()) {
                Contacto alumno = new Contacto();
                alumno.setCodigo(rs.getInt("codigo"));
                alumno.setNombre(rs.getString("nombre"));
                alumno.setApellido(rs.getString("apellidos"));
                ListaAlumnos.add(alumno);
            }
            rs.close();
            st.close();
            conexion.close();
        }
        catch(Exception ex){
            
        }
        return ListaAlumnos;
    }
}
