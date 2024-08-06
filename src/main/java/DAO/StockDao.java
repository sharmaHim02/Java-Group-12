/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;
import Model.Inventory;
import java.util.ArrayList;

public interface StockDao {
    public boolean insert(Inventory stock);
    public boolean delete(Inventory stock);
    public boolean update(Inventory stock);
    public boolean markSurplus(Inventory stock, boolean surplus);
    public Inventory get(Inventory stock);
    public ArrayList<Inventory> getAll(Integer retailerId);
    public ArrayList<Inventory> getAll();
}
