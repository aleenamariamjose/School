// marking a class as virtual means that it can be extended.
public virtual with sharing class Person {
    // Public variables can be accessed outside of the defining class but only within its defining namespace
 public String name;
 // private variables can only be accessed within the defining class
 private Integer age;

 private Season favoriteSeason = Season.WINTER;

 // Constructors are invoked when an object is created from the class blue print.

 // Default or no-argument constructor
 // If non-default constructors are supplied, the default is not automatically created.
 public Person(){
     name = '';
     age = 0;
 }

 public Person(String name) {
     this.name = name;
     age = 0;
 }

 public Person(Integer age) {
     name = '';
     setAge(age);
 }

 public Person(Season s) {
     name = '';
     age = 0;
     favoriteSeason = s;
 }

 // Accessors
public Integer getAge(){
    return age;
}

 // Mutators
 public void setAge(Integer age) {
     if (age < 0) {
         this.age = 0;
         System.debug('Should not be negative');
     }
     else {
         this.age=age;
     }
     this.age= age;
 }

 public virtual void display(){
     System.debug('Person Info');
     System.debug('Name: ' + name);
     System.debug('Age:' + age);
     System.debug('Favorite Season: ' + favoriteSeason);
 }

}
