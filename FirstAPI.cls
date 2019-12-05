
@RestResource(urlMapping='/v1/Accounts')
global with sharing class FirstAPI {
    @HttpGet
    global static List<Account> getAccounts(){
        return [SELECT Id, Name FROM Account];
    } 

    @HTTpPost
    global static Account createAccount(String name) {
        Account a = new Account(Name=name);
        insert a;
        return a;
    }
}
