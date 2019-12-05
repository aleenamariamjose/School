public with sharing class P0 {
    
    public static integer Fibonacci(integer n) {
        integer num1 = 1;
        integer num2 = 1;
        for (integer i=2; i<n; i++) {
            integer fibo = num2 + num1;
            num1 = num2;
            num2 = fibo;
        }
        return num2;
    }


    public static String reverseString(String s) {
        integer stringLength = s.length();
        String[] arrayOfString = new List<String>();
        for(integer i=stringLength-1; i>=0; i--) {
            arrayOfString.add(s.substring(i,i+1));
        }
        s = String.join(arrayOfString,'');
        return s;
    }

    public static Boolean isPalindrome(String s) {
        if(P0.reverseString(s)==s)
        return true;
        else {
            return false;
        }
    }

    public static Integer factorial(Integer n) {
        if(n>=1){
            return n*factorial(n-1);
        }
        else {
            return 1;
        }
    }

    public static List<Account> getAccountsForAGivenState(State s) {
        //Account[] acc = [SELECT Id,Name FROM Account WHERE BillingState=:s.name()];
       // Contact[] contacts = [SELECT Name,Account.Name,MailingState FROM Contact WHERE (Account.BillingState=:s.name() AND MailingState=:s.name())];
       Account[] acc = [SELECT Account.Name, ( SELECT Contact.FirstName, Contact.LastName FROM Account.Contacts WHERE MailingState=:s.name() ) FROM Account WHERE BillingState=:s.name()];
        return acc; 
    }

   public static List<Class_Enrollment__c> getClassGrades() {
        Class_Enrollment__c[] students = [SELECT Student__r.Name, Name FROM Class_Enrollment__c LIMIT 5];
        return students; 
    } 
}
