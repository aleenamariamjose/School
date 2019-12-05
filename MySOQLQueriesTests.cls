// A test class must be marked with the @isTest annotation
@isTest()

public with sharing class MySOQLQueriesTests {

    // TestSetup methods are used to create data that can be tested in different method
    //note that this method is called at the beginning of each method
    @TestSetup
    static void makeData(){
       Class__c mockClass = new Class__c();
        mockClass.Name = 'MAT100';
        mockClass.ClassSubject__c = 'Math';
        mockClass.ClassTopic__c = 'Algebra';
        //insert record into database
        insert mockClass;

        mockClass = new Class__c();
        mockClass.Name = 'BIO100';
        mockClass.ClassSubject__c = 'Science';
        mockClass.ClassTopic__c = 'Biology';
        insert mockClass;
    }
    // test methods must be marked with the @isTest annotation
    @isTest static void testFindAllClasses(){
        //Given - mock data

        //insert record into database
       // insert mockClass;

        //Action
        List<Class__c> classes = MySOQLQueries.findAllClasses();

        // Result

        // Use the system class to test your apex
        System.assertEquals(2, classes.size(), 'There should only be one record in the db');
    }

    @isTest static void testFindAllMathClasses(){
        //Action
        List<Class__c> classes = MySOQLQueries.findAllMathClasses();

        System.assertEquals(1,classes.size());
    }

    @isTest static void testFindAllClassesGivenSubject(){
        //Action
        List<Class__c> classes = MySOQLQueries.findAllClassesGivenSubject('Science');

        System.assertEquals(1,classes.size());
    }
    @isTest static void testAlgebraClassesInJanuary(){
        //Action
        List<Class__c> classes = MySOQLQueries.findAlgebraClassesInJanuary();

        System.assertEquals(1,classes.size());
    }

    @isTest static void testFindAllClassesBySubjectGivenMonth(){
        //Action
        List<Class__c> classes = MySOQLQueries.FindAllClassesBySubjectGivenMonth('Math', 1);
        System.assertEquals(1,classes.size());

        classes = MySOQLQueries.FindAllClassesBySubjectGivenMonth('Math', 2);
        System.assertEquals(0,classes.size());
    }

     @isTest static void testFiveAssessments(){
         List<Assessment__c> assessments = MySOQLQueries.fiveAssessments();
         System.assertEquals(5,assessments.size());

         for (Assessment__c a : assessments) {
           System.assertNotEquals(null,a.Name);  
           System.assertNotEquals(null,a.Class__c);
           System.assertNotEquals(null,a.AverageGrade__c);    
         }
     }

     @isTest static void testfindByAssessmentsGivenClass() {
         //given
         Class__c c = [SELECT Id FROM Class__c LIMIT 1];
         //Action
         List<Assessment__c> assessments = MySOQLQueries.findByAssessmentsGivenClass(c);
         // Result
         for (Assessment__c a : assessments) {
             System.assert(80 <= a.AverageGrade__c && a.AverageGrade__c <90);
             
         }
     }
}
