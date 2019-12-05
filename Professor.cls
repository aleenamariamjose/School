public with sharing class Professor extends Person{
   // Properties are just fancy getters/setters
   //must be public
   public Decimal salary {
       get; // it contains return salary;
       set{
           // value is a keyword that is made available within the set clause of a property.
           // It will contain the value being set to this property.
           if (salary < 0.0) {
               System.debug('Thats called debt');
               value = 0.0;
           }else {
               salary = value;
           }
       }
   }
    // This default constructor will automatically call the person default constructor, setting name and age to default values.
   public Professor() {
       salary = 0.0;
   }

    // default of parent is not automatically called
   public Professor(String name) {
       super(name);
       salary = 0.0;
   }
    // Display Professor salary after calling Person display method.
   public override void display() {
       super.display();
       System.debug('Professor Information:');
       System.debug('Salary: ' + salary);
   }
}
