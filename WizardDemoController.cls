public with sharing class WizardDemoController {
    public String name {get;set;}
    public String email {get;set;}
    public String phone {get;set;}
    
    public PageReference goToPageOne() {
        return Page.Page1;
    }
    public PageReference goToPageTwo() {
        return Page.Page2;
    }
    public PageReference goToPageThree(){
        return Page.Page3;
    }
    public PageReference goToPageFour(){
        return Page.Page4;
    }
    public Contact cont{get; set;}
    public PageReference goToSave(){
        cont = new Contact();
        cont.LastName = name;
        cont.Email = email;
        cont.Phone = phone;
        try{
        upsert cont;
        }catch(DMLException dmle){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, dmle.getMessage()));
        }
        PageReference contactdetails = new ApexPages.StandardController(cont).view();
        return contactdetails;
    }
}
