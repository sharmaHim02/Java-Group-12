/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

/**
 *
 * @author yuvra
 */

import java.util.ArrayList;
import Model.Consumption;

import java.util.ArrayList;


public interface ConsumerDao {
    ArrayList<Consumption> getAll();
    boolean insert(Consumption entry);
}
