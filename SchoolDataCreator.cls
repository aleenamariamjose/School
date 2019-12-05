public class SchoolDataCreator {
    public static void createData() {
        deleteExistingSchoolData();
        createStudents();
        createClasses();
        createClassEnrollments();
        createAssessments();
        createGrades();
    }
    
    private static void deleteExistingSchoolData() {
        deleteExistingGrades();
        deleteExistingAssessments();
        deleteExistingClassEnrollments();
        deleteExistingClasses();
        deleteExistingStudents();
    }
    
    private static void deleteExistingGrades() { delete [SELECT Id FROM Grade__c]; }
    private static void deleteExistingAssessments() { delete [SELECT Id FROM Assessment__c]; }
    private static void deleteExistingClassEnrollments() { delete [SELECT Id FROM Class_Enrollment__c]; }
    private static void deleteExistingClasses() { delete [SELECT Id FROM Class__C]; }
    private static void deleteExistingStudents() { delete [SELECT Id FROM Student__c]; }
    
    private static void createStudents() {
        List<Student__c> studentsToInsert = new List<Student__c>();
        
        studentsToInsert.add(new Student__c(Name='Mike Williams',PhoneNumber__c='0000000000',Age__c=18,Email__c='mwilliams@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Pete Jacobs',PhoneNumber__c='0000000000',Age__c=28,Email__c='pjacobs@gmail.com',Status__c='Prospect'));
        studentsToInsert.add(new Student__c(Name='Carly Jones',PhoneNumber__c='0000000000',Age__c=22,Email__c='cjones@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Andy Young',PhoneNumber__c='0000000000',Age__c=35,Email__c='ayoung@gmail.com',Status__c='Graduated'));
        studentsToInsert.add(new Student__c(Name='Janice Keenan',PhoneNumber__c='0000000000',Age__c=24,Email__c='jkeenan@gmail.com',Status__c='Denied'));
        studentsToInsert.add(new Student__c(Name='Bill Brunson',PhoneNumber__c='0000000000',Age__c=19,Email__c='bbrunson@gmail.com',Status__c='Pending'));
        studentsToInsert.add(new Student__c(Name='Jake Pitsel',PhoneNumber__c='0000000000',Age__c=18,Email__c='jpitsel@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Susan Jetse',PhoneNumber__c='0000000000',Age__c=31,Email__c='sjetse@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Joe McFlusters',PhoneNumber__c='0000000000',Age__c=22,Email__c='jmcflusters@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Alex Baldwin',PhoneNumber__c='0000000000',Age__c=26,Email__c='abldwin@gmail.com',Status__c='Graduated'));
        studentsToInsert.add(new Student__c(Name='Bill Russell',PhoneNumber__c='0000000000',Age__c=45,Email__c='brussell@gmail.com',Status__c='Graduated'));
        studentsToInsert.add(new Student__c(Name='Joe Rogan',PhoneNumber__c='0000000000',Age__c=35,Email__c='jrogan@gmail.com',Status__c='Prospect'));
        studentsToInsert.add(new Student__c(Name='Oprah Winfrey',PhoneNumber__c='0000000000',Age__c=27,Email__c='owinfrey@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Randy Moss',PhoneNumber__c='0000000000',Age__c=22,Email__c='rmoss@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Allen Iverson',PhoneNumber__c='0000000000',Age__c=25,Email__c='ai@gmail.com',Status__c='Graduated'));
        studentsToInsert.add(new Student__c(Name='Lebron James',PhoneNumber__c='0000000000',Age__c=21,Email__c='goat@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Jenny Peterson',PhoneNumber__c='0000000000',Age__c=29,Email__c='jpeterson@gmail.com',Status__c='Pending'));
        studentsToInsert.add(new Student__c(Name='Peter Jetson',PhoneNumber__c='0000000000',Age__c=31,Email__c='pjetson@gmail.com',Status__c='Enrolled'));
        studentsToInsert.add(new Student__c(Name='Greg Maddox',PhoneNumber__c='0000000000',Age__c=27,Email__c='gmaddox@gmail.com',Status__c='Enrolled'));
        
        insert studentsToInsert; 
    }
    
    private static void createClasses() {
        List<Class__c> classesToInsert = new List<Class__c>();
        
        classesToInsert.add(new Class__c(Name='MAT100',Capacity__c=10,ClassSubject__c='Math',ClassTopic__c='Algebra',StartDate__c=(Date.newInstance(2019, 9, 12))));
        classesToInsert.add(new Class__c(Name='MAT200',Capacity__c=10,ClassSubject__c='Math',ClassTopic__c='Calculus',StartDate__c=(Date.newInstance(2019, 9, 9))));
        classesToInsert.add(new Class__c(Name='BIO100',Capacity__c=10,ClassSubject__c='Science',ClassTopic__c='Biology',StartDate__c=(Date.newInstance(2019, 9, 23))));
        classesToInsert.add(new Class__c(Name='BIO200',Capacity__c=10,ClassSubject__c='Science',ClassTopic__c='Chemistry',StartDate__c=(Date.newInstance(2019, 10, 7))));
        classesToInsert.add(new Class__c(Name='HIS100',Capacity__c=10,ClassSubject__c='History',ClassTopic__c='Egyptian Civilization',StartDate__c=(Date.newInstance(2019, 8, 13))));
        classesToInsert.add(new Class__c(Name='HIS200',Capacity__c=10,ClassSubject__c='History',ClassTopic__c='Chinese History',StartDate__c=(Date.newInstance(2019, 8, 19))));
        classesToInsert.add(new Class__c(Name='ENG100',Capacity__c=10,ClassSubject__c='English',ClassTopic__c='Shakespeare',StartDate__c=(Date.newInstance(2019, 8, 26))));
        classesToInsert.add(new Class__c(Name='ENG200',Capacity__c=10,ClassSubject__c='English',ClassTopic__c='American Literature',StartDate__c=(Date.newInstance(2019, 9, 23))));
        
        insert classesToInsert;
    }
    
    private static void createClassEnrollments() {
        List<Student__c> students = [SELECT Id, Status__c FROM Student__c];
        List<Class__c> classes = [SELECT Id FROM Class__c];
        
        List<Class_Enrollment__c> classEnrollmentsToInsert = new List<Class_Enrollment__c>();
        
        for (Class__c c: classes) {
            for (Student__c student: students) {
                if (student.Status__c == 'Enrolled') {
                    classEnrollmentsToInsert.add(new Class_Enrollment__c(Student__c=student.Id,Class__c=c.Id));
                }
            }   
        }
        
        insert classEnrollmentsToInsert;
    }
    
    private static void createAssessments() {
        List<Class__c> classes = [SELECT Id FROM Class__c];
        List<Assessment__c> assessmentsToInsert = new List<Assessment__c>();
        
        Schema.DescribeSObjectResult assessmentInfo = Assessment__c.SObjectType.getDescribe();
        List<Schema.RecordTypeInfo> assessmentRecordTypeInfos = assessmentInfo.getRecordTypeInfos();
        
        
        
        Integer count = 1;
        for(Schema.RecordTypeInfo recordTypeInfo: assessmentRecordTypeInfos) {
            if (recordTypeInfo.getDeveloperName() != 'Master') {
                for (Class__c c: classes) {
                    assessmentsToInsert.add(new Assessment__c(RecordTypeId=recordTypeInfo.getRecordTypeId(),
                                                              Name=(recordTypeInfo.getDeveloperName()),
                                                              Class__c=c.Id,
                                                              Additional_Information__c='Solo',
                                                              TimeGiven__c=30));
                }
                count++;
            }
        }
        
        insert assessmentsToInsert;
    }
    
    private static void createGrades() {
        List<Class__c> classes = [SELECT Id FROM Class__c];
        
        List<Class_Enrollment__c> classEnrollments = [SELECT Id, Class__c FROM Class_Enrollment__c];
        
        List<Assessment__c> assessments = [SELECT Id, Class__c FROM Assessment__c];
        List<Grade__c> gradesToInsert = new List<Grade__c>();
        
        Integer countClassEnrollments = 0;
        
        for (Assessment__c assessment: assessments) {
            for (Class__c c: classes) {
                if (assessment.Class__c == c.Id) {
                    for (Class_Enrollment__c ce: classEnrollments) {
                        if (ce.Class__c == assessment.Class__c) {
                            countClassEnrollments++;
                            gradesToInsert.add(new Grade__c(Assessment__c=assessment.Id,
                                                            ClassEnrollment__c=ce.Id,
                                                            Grade__c=getRandomNumber()));
                        }
                    }
                }
            }
        }
        insert gradesToInsert;
    }
    
    private static double getRandomNumber() {
        Double randomNumber = Math.random();
        while (randomNumber < 0.5) {
            randomNumber = Math.random();
        }
        
        return randomNumber * 100;
    }    
}