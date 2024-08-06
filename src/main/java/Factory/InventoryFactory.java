/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;
import Model.Inventory;
import java.util.Date;

public class InventoryFactory {
    public static Inventory create(int itemId, int retailerId, Date expiryDate,
                               double price, Integer quantity,
                               boolean surplus) {
        return new Inventory(itemId, retailerId, expiryDate, price, quantity, surplus);
    }
    
    public static Inventory create(int itemId, int retailerId, Date expiryDate) {
        return new Inventory(itemId, retailerId, expiryDate);
    }

}
