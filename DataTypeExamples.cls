public with sharing class DataTypeExamples {
    /**
        Print start date of salesforce class.
     */
    public static void printStartDate(){
        Date startDate = Date.newInstance(2019, 09, 16);
        // To print to the console
        System.debug('Start Date: ' + startDate); 
    }
}