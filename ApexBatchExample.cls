global with sharing class ApexBatchExample implements Database.Batchable<sObject> {
    global database.QueryLocator start(Database.BatchableContext BC) {
        //get all acoounts we will be operating on
        String query = 'SELECT Id, Name FROM Account';

        // Database.QueryLocator() can return up to 50 million records and should be used in instances where u want to batch a hig volume of data.
        // the database query() method must be used in instances where u want to perform dynamic SOQL
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<Account> accList) {
        // where our business logic lives
        for(Account a: accList) {
            a.Name = a.Name + 'batch';
        }
        update accList;
    }

    global void finish(Database.BatchableContext BC) {}

    /*
        ApexBatchExample abe = new ApexBatchExample();
        Database.executeBatch(abe);
    */
}
