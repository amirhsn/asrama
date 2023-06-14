/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Asrama;

import Database.Database;
import Views.Login_Views;
import java.sql.Connection;

/**
 *
 * @author amirhsn
 */
public class Asrama {
    public static void main(String[] args) {
        Database database = new Database();
        Connection connection = database.getConnection();
        // Start dari Login Form
        Login_Views loginViews = new Login_Views(connection);

        // Menampilkan frame Login_Views
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                loginViews.setVisible(true);
            }
        });
    }
}
