public with sharing class Main {
    public Main() {
        Person p = new Person();
        p.setAge(20);
        System.debug('age: '+p.getAge());

        //Constructor examples
        Person p = new Person();
        System.debug('p: ' +p);
    }
}

Professor p = new Person(); // cant do this. person isn't always a professor
Person p2 = new Professor('Matt');
p2.display(); // can do this. Professor is always a person.
p2.salary; // not valid

PurchaseOrder p = new CustomerPurchaseOrder();
System.debug('Discount: ' + p.discount());
p = new EmployeePrchaseOrder();
System.debug('Discount: ' + p.discount());


Calculatable c = new Square((double)12.2);// casted to double
System.debug('Area: ' + c.caculateArea());

//Project
System.debug(' Fibonacci= ' +  P0.Fibonacci(5));


System.debug(' String= ' + P0.reverseString('aleena'));

System.debug(P0.isPalindrome('Ragar'));

System.debug(P0.factorial(1));

System.debug(P0.getAccountsForAGivenState(State.NY));

System.debug(P0.getClassGrades());
for(Class_Enrollment__c ce: p0.getClassGrades()){
    System.debug(ce);
}

