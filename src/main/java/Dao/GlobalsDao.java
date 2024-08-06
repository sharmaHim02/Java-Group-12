/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

/**
 *
 * @author yuvra
 */

import database.DBConnection;


public class GlobalsDao {
    public static void setServDir(String srvDir) {
        DBConnection.setServerPath(srvDir);
    }    
}
