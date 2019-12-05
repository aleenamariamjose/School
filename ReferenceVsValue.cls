public with sharing class ReferenceVsValue {
    public static void passByValue() {
        Integer i = 0;
        valueMethod(i);
        System.debug('i: ' + i);
    }

    public static void valueMethod(Integer i) {
        i=5;
    }

    public static void passByReference() {
        Account a = new Account(Name='Aleena');
        referenceMethod(a);
        System.debug('a: ' +a);
    }

    public static void referenceMethod(Account a) {
        a.Name = 'Bill';
    }
}