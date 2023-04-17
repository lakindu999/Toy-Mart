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

public class manager extends systemUser {
    
    
    public manager(String ID, String userName, String password, String name, String phoneNo, String userAddress, String nicNo) {
        super(ID, userName, password, name, phoneNo, userAddress, nicNo);
    }
    
      
    
      public manager() {
    }
      
    @Override
      public void registerStorage(storage storage){ 
      storage.addStorage();
    }
    
}