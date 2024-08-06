/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;
import DAO.ItemDaoImplementation;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Inventory {
    private Integer itemId;
    private Integer retailerId;
    private Date expiryDate;
    private double discountedPrice;
    private Integer quantity;
    private boolean surplus;
    
    private Inventory() {}
    
    public Inventory(int itemId, int retailerId, Date expiryDate, double discountedPrice, Integer quantity, boolean surplus) {
        this.itemId = itemId;
        this.retailerId = retailerId;
        this.expiryDate = expiryDate;
        this.discountedPrice = discountedPrice;
        this.quantity = quantity;
        this.surplus = surplus;
    }

    public Inventory(int itemId, int retailerId, Date expiryDate) {
        this.itemId = itemId;
        this.retailerId = retailerId;
        this.expiryDate = expiryDate;
    }

    public boolean IsSurplus() {
        return surplus;
    }

    public void setSurplus(boolean surplus) {
        this.surplus = surplus;
    }

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public Integer getRetailerId() {
        return retailerId;
    }

    public void setRetailerId(int retailerId) {
        this.retailerId = retailerId;
    }

    public Date getExpiryDate() {
        return expiryDate;
    }
    
    public String getExpiryDateStr() {
        SimpleDateFormat fmt = new SimpleDateFormat("MMM dd, yyyy");
        return fmt.format(expiryDate);
    }

    public String getExpiryDateWidgetFmt() {
        SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
        return fmt.format(expiryDate);
    }


    public void setExpiryDate(Date expiryDate) {
        this.expiryDate = expiryDate;
    }

    public double getDiscountedPrice() {
        return discountedPrice;
    }

    public void setDiscountedPrice(double discountedPrice) {
        this.discountedPrice = discountedPrice;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    
    public String getItemNameStr() {
        Item item = ItemDaoImplementation.getInstance().get(this.itemId);
        if (item != null) {
            return item.toString();
        }
        return null;        
    }
}
