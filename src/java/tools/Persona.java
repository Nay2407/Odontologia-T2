/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tools;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

public class Persona {

    private int idpersona;
    private String nombre;
    private String apellido;
    private String fecNac;
    private String genero;
    private String direccion;
    private String telefono;
    private String correo;
    private String tipDoc;
    private String numDoc;

    public Persona(int idpersona, String nombre, String apellido, String fecNac, String genero, String direccion, String telefono, String correo, String tipDoc, String numDoc) {
        this.idpersona = idpersona;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecNac = fecNac;
        this.genero = genero;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correo = correo;
        this.tipDoc = tipDoc;
        this.numDoc = numDoc;
    }

    public Persona() {
        
    }

    public int getIdpersona() {
        return idpersona;
    }

    public void setIdpersona(int idPersona) {
        this.idpersona = idpersona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido =apellido;
    }

    public String getFecNac() {
        return fecNac;
    }

    public void setFecNac(String fecNac) {
        this.fecNac = fecNac;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getdireccion() {
        return direccion;
    }

    public void setdireccion(String direccion) {
        this.direccion = direccion;
    }

    public String gettelefono() {
        return telefono;
    }

    public void settelefono(String telefono) {
        this.telefono = telefono;
    }
    
     public String getcorreo() {
        return correo;
    }

    public void setcorreo(String correo) {
        this.correo = correo;
    }
    
    public String gettipDoc() {
        return tipDoc;
    }

    public void setipDoc(String tipDoc) {
        this.tipDoc = tipDoc;
    }
    
     public String getnumDoc() {
        return numDoc;
    }

    public void setnumDoc(String numDoc) {
        this.numDoc = numDoc;
    }
    
    public LinkedList<Persona> listar() {        
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();            
            String consulta = "Select * from persona ";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            LinkedList<Persona> lista = new LinkedList<>();            
            while(resultado.next()) {
                Persona emp = new Persona();
                emp.idpersona = resultado.getInt("idPersona");
                emp.nombre = resultado.getString("nombre");
                emp.apellido = resultado.getString("apellido");
                emp.fecNac = resultado.getString("fecNac");
                emp.genero = resultado.getString("genero");
                emp.direccion = resultado.getString("direccion");
                emp.telefono = resultado.getString("telefono");
                emp.correo = resultado.getString("correo");
                emp.tipDoc = resultado.getString("tipoDoc");
                emp.numDoc = resultado.getString("numDoc");
                lista.add(emp);
            }  
            sentencia.close();
            cnx.close();
            return lista;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

        
    
}
