/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;

import Conexion.Conexion;
import com.mysql.jdbc.Connection;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author ESCRITORIO
 */
public class CategoriaCad {
    
    public static ArrayList<Categoria> listar(){
        ArrayList<Categoria> lista = new ArrayList<Categoria>();
        java.sql.Connection cn;
        Conexion con = new Conexion();
        cn=con.conectar();
        try {
            String sql ="{call sp_listarCategoriaSuperior()}";
            
            CallableStatement sentencia=(CallableStatement) cn.prepareCall("NOSTRAR SUB CATEGORIAS");
            ResultSet resultado=sentencia.executeQuery();
            while(resultado.next()){
                Categoria cat= new Categoria();
                cat.setCodigo(resultado.getInt("codigo"));
                cat.setNombre(resultado.getString("nombre"));
                lista.add(cat);
            }
                return lista;
        } catch (SQLException ex) {
            return null;
        }
        
    }
}
