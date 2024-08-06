/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author yuvra
 */
import Dao.ItemDaoImplementation;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Consumption {
    private int itemId;
    private int retailerId;
    private int consumerId;
    private EntityType consumerType;
    private int quantity;
    private Date purchaseDate;
    private Date expirationDate;
    private double price;

    public Consumption(int itemId, int retailerId, int consumerId,
                       EntityType consumerType, int quantity,
                       Date purchaseDate, Date expirationDate, double price) {
        this.itemId = itemId;
        this.retailerId = retailerId;
        this.consumerId = consumerId;
        this.consumerType = consumerType;
        this.quantity = quantity;
        this.purchaseDate = purchaseDate;
        this.expirationDate = expirationDate;
        this.price = price;
    }

    public int getItemId() {
        return itemId;
    }

    public int getConsumerId() {
        return consumerId;
    }

    public void setConsumerId(int consumerId) {
        this.consumerId = consumerId;
    }

    public EntityType getConsumerType() {
        return consumerType;
    }
    
    public String getConsumerTypeStr() {
        if (consumerType == EntityType.CHARITY) {
            return "CHA";
        } else {
            return "IND";
        }
    }

    public Date getExpirationDate() {
        return expirationDate;
    }
    
    public String getExpirationDateStr() {
        SimpleDateFormat fmt = new SimpleDateFormat("MMM dd, yyyy");
        return fmt.format(expirationDate);
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public void setConsumerType(EntityType consumerType) {
        this.consumerType = consumerType;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public int getRetailerId() {
        return retailerId;
    }

    public void setRetailerId(int retailerId) {
        this.retailerId = retailerId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public String getPurchaseDateStr() {
        SimpleDateFormat fmt = new SimpleDateFormat("MMM dd, yyyy");
        return fmt.format(purchaseDate);
    }
    
    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getItemNameStr() {
        Item item = ItemDaoImplementation.getInstance().get(this.itemId);
        if (item != null) {
            return item.toString();
        }
        return "";
    }
}
