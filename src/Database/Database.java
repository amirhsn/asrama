/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author amirhsn
 */
public class Database {
    private Connection connection;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/asrama_database";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public Database() {
        try {
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (SQLException e) {
            System.out.println("Koneksi ke database gagal, pesan error: " + e.getMessage());
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            System.out.println("Penutupan koneksi dari database gagal, pesan error: " + e.getMessage());
        }
    }
}
