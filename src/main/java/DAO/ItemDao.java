/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package DAO;

import Model.Item;
import java.util.ArrayList;

public interface ItemDao {
    public boolean insert(Item item);
    public boolean delete(Integer id);
    public boolean check(Integer id);
    public Item check(String itemType, String itemName);
    public Item get(Integer itemId);
    public ArrayList<Item> getAll();
}
