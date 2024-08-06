/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;
import Model.Retailer;

public class RetailerFactory {

    public static Retailer create(String username,
                                  String password,
                                  String name) {
        return new Retailer(username, password, name);
    }
}
