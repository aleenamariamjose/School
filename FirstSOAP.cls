global with sharing class FirstSOAP {
   webservice static Contact createContact(String firstName, String lastName) {
       Contact c = new Contact(firstName=firstName,lastName=lastName);
       insert c;
       return c;
   }
}
