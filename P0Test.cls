@isTest()

public with sharing class P0Test {
    @TestSetup
    static void makeData(){
        Account mockAccount = new Account();
        mockAccount.Name = 'Gas and Oil';
        mockAccount.BillingState = 'NY';
        insert mockAccount;

        mockAccount = new Account();
        mockAccount.Name = 'Edge Communications';
        mockAccount.BillingState = 'NY';
        insert mockAccount;

        mockAccount = new Account();
        mockAccount.Name = 'sForce';
        mockAccount.BillingState = 'VA';
        insert mockAccount;

        Contact mockcontact = new Contact();
        mockcontact.FirstName = 'Aleena';
        mockcontact.LastName = 'Jose';
        mockcontact.MailingState = 'NY';
        insert mockcontact;

        mockcontact = new Contact();
        mockcontact.FirstName = 'Jonathen';
        mockcontact.LastName = 'John';
        mockcontact.MailingState = 'VA';
        insert mockcontact;
    }

    @isTest static void testgetAccountsForAGivenState(){
        Contact c = [SELECT Contact.FirstName, Contact.LastName FROM Contacts]
        List<Account> accounts = P0Test.testgetAccountsForAGivenState();
        for (<Account> accounts: List_or_set) {
            
        }
        System.assert()
    }