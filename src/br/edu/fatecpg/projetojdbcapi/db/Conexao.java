package br.edu.fatecpg.projetojdbcapi.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao{
    public static Connection connection(){
        try{
            var jdbcUrl = "jdbc:postgresql://localhost:5432/db_fatec";
            var user = "postgres";
            var password = "1234";
            return DriverManager.getConnection(jdbcUrl, user, password);
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
        return null;
    }

}