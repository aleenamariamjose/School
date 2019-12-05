public with sharing class MyControllerExtension {

    private Account acct;

   // The extension constructor initialized the connection to the standard controller.

   public MyControllerExtension(ApexPages.StandardController ctrl){
       // Using the getRecord method from the Standard Controller, we can retrieve the record for the current context.
       this.acct = (Account)ctrl.getRecord();

   }

   public PageReference save() {
       upsert acct;
       return null;
   }

   public String getGreeting() {
       return 'Hello' + acct.Name + '(' +acct.Id + ')' ;
   }
}
