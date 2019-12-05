public with sharing class MySOQLQueries {
    public static List<Class__c> findAllClasses() {
        // SOQL queries, when using in Apex, are surrounded by the square brackets.
        List<Class__c> classList = [SELECT Id FROM Class__c];
        return classList;   //return [SELECT Id FROM Class__c];--- can do this way too
    }

    public static List<Class__c> findAllMathClasses() {
        return [SELECT Id FROM Class__c WHERE ClassSubject__c= 'Math'];
    }

    public static List<Class__c> findAllClassesGivenSubject(String subject) {
        //use the colon(:) in queries to unwrap a variable
        return [SELECT Id, Name FROM Class__c WHERE ClassSubject__c=: subject];
    }
    public static List<Class__c> findAllClassesBySubjectGivenMonth(String subject, Integer month) {
        //use the colon(:) in queries to unwrap a variable
        return [SELECT Id FROM Class__c WHERE CALENDAR_MONTH(StartDate__c)=: month AND ClassSubject__c =: subject];
    }

    public static List<Class__c> findAlgebraClassesInJanuary() {
        //use the colon(:) in queries to unwrap a variable
        return [SELECT Id FROM Class__c WHERE CALENDAR_MONTH(StartDate__c)=1 AND ClassTopic__c = 'Algebra'];
    }

    public static List<Assessment__c> fiveAssessments() {
        return [SELECT Name, Class__c, AverageGrade__c FROM Assessment__c LIMIT 5];
    }

    public static List<Assessment__c> findByAssessmentsGivenClass(Class__c c) {
        return [SELECT 
                    Id, AverageGrade__c 
                FROM 
                    Assessment__c 
                WHERE 
                    Class__c =: c.Id AND AverageGrade__c >= 80 AND AverageGrade__c <90
                ];
    }

}