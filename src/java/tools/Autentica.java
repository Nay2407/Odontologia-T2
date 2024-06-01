package tools;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
        
public class Autentica {
    private String usuario;
    private String password;
    private int logueado;

    public Autentica() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }    

    public void setLogueado(int logueado) {
        this.logueado = logueado;
    }
    public void setLogueadoRec(int logueado) {
        this.logueado = logueado;
    }
    public void setLogueadoAdmi(int logueado) {
        this.logueado = logueado;
    }
    
    public boolean getLogueado(String usr, String psw) {
        boolean flag = false;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            
            String consulta = "Select * from paciente where usuario='"+
                    usr+"' and contraseña='"+psw+"';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            while(resultado.next()) {
                flag=true;
            }        
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return flag;
    }
    public boolean getLogueadoRec(String usr, String psw) {
        boolean flag = false;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            
            String consulta = "Select * from recepcionista where usuario='"+
                    usr+"' and contraseña='"+psw+"';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            while(resultado.next()) {
                flag=true;
            }        
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return flag;
    }
    public boolean getLogueadoAdmi(String usr, String psw) {
        boolean flag = false;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            
            String consulta = "Select * from administrador where usuario='"+
                    usr+"' and contraseña='"+psw+"';";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(consulta);
            while(resultado.next()) {
                flag=true;
            }        
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return flag;
    }
    
    
}
