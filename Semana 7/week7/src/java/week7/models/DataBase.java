/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package week7.models;

import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
/**
 *
 * @author USUARIO
 */
public class DataBase {
    private static String getPathDatabase() {
        return "database/Week7.json";
    }
    private static boolean setJsonObject(String name, String username, String password, String lastName) {
        JSONObject obj = new JSONObject();

       //Solo guarda un valor
       obj.put("Name", name);

       String rutaJson = getPathDatabase(); //llamada a método anterior

       try (FileWriter file = new FileWriter("database/Week7.json")) {
               file.write(obj.toJSONString());

               return true;
       }
       catch(IOException ioext) {
           return false;
       }
    }
    private static JSONObject getJsonObject() {

        try {
            String rutaJson = getPathDatabase();
            JSONParser parser = new JSONParser();
            Object obj = parser.parse(new FileReader("database/Week7.json"));

            JSONObject jsonObject =  (JSONObject) obj;

            return jsonObject;
        }
        catch(IOException | ParseException ioext) {
            return null;
        }
    }
    public static User getUserByUsername(String username) {
        User user;
        JSONObject jsonObject = getJsonObject(); //llama a método anterior

        if(jsonObject != null) {
            String propiedadDb = (String) jsonObject.get(username);

            //Valida si el usuario que se pide es igual al que se encuentra
            //en el archivo JSON
            if(username.equals(propiedadDb)) {
                user = new User(username, "","",""); //Completar con todas las propiedades del usuario
            }
            else {
                user = null;
            }

            return user;
        }
        else{
            return null;
        }
    }
    public static User getUserByUsernamePassword(String username, String password){
        User user;

        JSONObject jsonObject = getJsonObject(); //Llamáda a método

        if(jsonObject != null) {
            String propiedadDb = (String) jsonObject.get("username");
            String passwordDb = (String) jsonObject.get("password");
            //Validar password y usuario
            //passwordDb no existe en este contexto. Usar el ejemplo de propiedadDb
            if(username.equals(propiedadDb) && password.equals(passwordDb)) {
                user = new User(username, password, "",""); //Completar con propiedades para construir objeto
            }
            else {
                user = null;
            }

            return user;
        }
        else{
            return null;
        }
    }
    public static boolean setUser(String name, String lastName, String username, String password) {

        boolean isSetup = setJsonObject(name, lastName, username, password);

        return isSetup;
    }
}
