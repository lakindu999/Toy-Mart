/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interf;

/**
 *
 * @author 94784
 */

import java.awt.Component;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class storage {
    
    //variables
    private String id;
    private String itemName;
    private String price;
    private String quantity;
    private String ageGroup;
    private Component rootPane;
    
    
     public storage(String itemID, String itemname, String pric, String quantit, String ageGrou) {
         
        this.id = itemID;
        this.itemName = itemname;
        this.price = pric;
        this.quantity = quantit;
        this.ageGroup = ageGrou;
       
        
    }
     
     public Component getRootPane(){
           return rootPane;
     }
     
      public void setRootPane (Component rootPane){
         this.rootPane = rootPane;
      }
     
     
    public storage() {
    }
     
     public String getitemID() {
        return id;
    }

    public void setitemID(String itemID) {
        this.id = itemID;
    }

    public String getitemname() {
        return itemName;
    }

    public void setitemname(String itemname) {
        this.itemName = itemname;
    }

    public String getpric() {
        return price;
    }

    public void setpric(String pric) {
        this.price = pric;
    }

    public String getquantit() {
        return quantity;
    }

    public void setquantit(String quantit) {
        this.quantity = quantit;
    }

    public String getageGrou() {
        return ageGroup;
    }

    public void setageGrou(String ageGrou) {
        this.ageGroup = ageGrou;
    }
     
     
     
     public void addStorage() {
             
         //object
         
         String Query = "select * FROM toy WHERE itemID = '"+id+"' ";
         DataBase dataBase1 = new DataBase();
         ResultSet dataWrite1 = dataBase1.dataRead(Query);
         System.out.println("");
         
         
        try {
            
            
            if (dataWrite1.next()==true)
                
            {
                
                JOptionPane.showMessageDialog(rootPane,"'"+id+ "'" +  "\r\nThis Stock ID Already Exist.\r\nPlease Try Again.");
                
            }
            
            else {
                
                String query = ("insert into toy (itemID,itemname,price,quantity,ageGroup)values('"+id+"','"+itemName+"','"+price+"','"+quantity+"','"+ageGroup+"')");
                DataBase dataBase = new DataBase();
                String dataWrite = dataBase.dataWrite(query);
                System.out.println(dataWrite);
                
                JOptionPane.showMessageDialog(rootPane,"Toy Added Successfully.");
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(storage.class.getName()).log(Level.SEVERE, null, ex);
        }
         
    }

    void setageGroup(Object selectedItem) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void tableload() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
     
        
}
