/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Factory;

/**
 *
 * @author yuvra
 */
import Model.Entity;


public abstract class ConsumerFactory {
    public abstract Entity getConsumer(String username,
                                       String password,
                                       String name);
}
