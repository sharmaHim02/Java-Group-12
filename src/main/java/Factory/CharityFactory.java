/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;

import Factory.ConsumerFactory;
import Model.Entity;
import Model.Charity;

public class CharityFactory extends ConsumerFactory {

    private static CharityFactory charityFactory = null;
    
    public static CharityFactory getInstance() {
        if (charityFactory == null) {
            charityFactory = new CharityFactory();
        }
        return charityFactory;
    }
    
    @Override
    public Entity getConsumer(String username, String password, String name) {
        return new Charity(username, password, name);
    }
}
