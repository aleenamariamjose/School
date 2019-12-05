global with sharing class ApexSchedulerExample implements Schedulable {
   global void execute(SchedulableContext sc) {
       Contact c = new Contact();
       c.firstName = 'Matt';
       c.LastName = 'Ruiz';
       insert c;
   }

   /*
        ApexSchedulerExample ase = new ApexSchedulerExample();
        String timeToExecute = '0 5 15 1 11 ?';

        String jobId = System.schedule('Create new Contact', timeToexecute, ase);
   */
}
