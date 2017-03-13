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
public class Authentication {
        public static boolean authenticate(String username, String password) {

        String userDataBase = "jorgemonsi";
        String passwordDataBase = "Mipassword";

        if(username.equals(userDataBase) && password.equals(passwordDataBase)) {
            return true;
        }
        else {
            return false;
        }
    }
}