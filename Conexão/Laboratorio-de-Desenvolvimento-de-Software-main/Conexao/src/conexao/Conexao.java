/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author laboratorio
 */
public class Conexao {
    public Connection getConexao(){
        try{
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/bdaula01?userTimeZone=true"
                    + "&serverTimeZone=UTC", "root", "laboratorio");
            System.out.println("Conexão efetuada!");
            return conn;
        }
        catch(Exception e){
            System.out.println("Erro ao conectar no BD" + e.getMessage());
            return null;
        }
    }
}
