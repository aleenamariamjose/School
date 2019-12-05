@isTest

public with sharing class AccountTriggerTests {
   @isTest static void testCheckPhoneNumberIsNotNull(){
       // Given
       Account a = new Account(Name='Matt');
        checkThatInsertErrorOccurred(a, 'Please provide a phone number');
       Account b = new Account(Name='Matt2', Phone='1234567890');
       Database.SaveResult insertResult = Database.insert(b,false);
       System.assert(insertResult.isSuccess());
   }

   static void checkThatInsertErrorOccurred(sObject obj, String message) {
       // Use the DB class to allow for partial processing.
       // using the DB class also return back 'SaveResult's which provide
       // information on the operation such as if it was successfull or not and any mess which are provided.
       Database.SaveResult insertResult = Database.insert(obj, false);

       // Insertion should have been stopped.
       System.assert(!insertResult.isSuccess());
       //If it stops we should also receive an error.
       System.assert(insertResult.getErrors().size()>0);
       //This error should match the provided error message
       System.assertEquals(message, insertResult.getErrors()[0].getMessage());
   }
}
