/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package week7.models;

/**
 *
 * @author Mate_19
 */
public class User {
    private String username;
    private String password;
    private String name;
    private String lastName;
    
    
     public User(String username, String password, String name, String lastName) {
        this.username = username;
        this.password = password;
        this.name = "Jorge";
        this.lastName = "Ruan";
    }

    public String getUsername() {
        return this.username;
    }
    public String getName(){
        return this.name;
    }
    public String getLastName(){
        return this.lastName;
    }
    public String getPassword(){
        return this.password;
    }
}