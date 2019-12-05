public with sharing class PaginationExtension {
    // keep a reference to the std set controller
   public ApexPages.StandardSetController setController{ set;get;}

   public PaginationExtension(ApexPages.StandardSetController controller) {
       setController = new ApexPages.StandardSetController( [SELECT Id, Name, BillingStreet, Type FROM Account]);

        //By default pagination uses a page size of 20
       setController.setPageSize(5);
   }

    // Since we cannot access setController.getRecords() from the client-side, we need a way to retrieve the new list of records.
   public List<Account> displayedAccounts {
       get {
           return setController.getRecords();
       }
       set;
   }

   public Boolean hasNext {
       get{
           return setController.getHasNext();
       }
       set;
   }

   public Boolean hasPrevious {
       get{
           return setController.getHasPrevious();
       }
   }

//    public void next(){
//        setController.next();
//    }

//    public void previous(){
//        setController.previous();
//    }
}
