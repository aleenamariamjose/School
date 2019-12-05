public with sharing class ComponentEventApexController {
    @AuraEnabled
   public static List<Case> getCasesWithPriority(String priority) {
       if(Schema.sObjectType.Case.isAccessible()) {
           return [
                SELECT
                    id, CaseNumber, Subject, Status, priority
                FROM
                    Case
                WHERE
                    Priority =: priority
           ];
       } else {
           return new List<Case>();
       }
   }
}
