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

public class cashier extends systemUser {
    
    
    public cashier (String ID, String userName, String password, String name, String phoneNo, String userAddress, String nicNo) {
        super(ID, userName, password, name, phoneNo, userAddress, nicNo);
    }
    
      
    
      public cashier() {
    }
      
    @Override
      public void registerStorage(storage storage){ 
      storage.addStorage();
    }
    
}