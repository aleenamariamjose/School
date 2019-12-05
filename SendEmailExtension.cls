public with sharing class SendEmailExtension {
    // Reference the standard
    ApexPages.StandardController ctrl;

    public SendEmailExtension(ApexPages.StandardController ctrl){
        this.ctrl = ctrl;
   }

   public PageReference save() {
       try {
           insert ctrl.getRecord();

           // use ApexPages.Message to create a message to send back to the VF page.
           ApexPages.Message msg = new ApexPages.Message(
               ApexPages.Severity.CONFIRM, 'Student Inserted'
           );
           ApexPages.addMessage(msg);
           EmailUtilityClass.sendEmail(ctrl.getRecord(), new List<String>{'aleena.jose@revature.net'}, 'New record created: ' + ctrl.getId(), 'Your record has been created');
           sendEmail(ctrl.getRecord());
       }catch (DMLException dmle) {
           ApexPages.Message msg = new ApexPages.Message(
               ApexPages.Severity.ERROR,
               'Error: ' + dmle.getMessage()
           );
           ApexPages.addMessage(msg);
       }
       return null;
   }

   private void sendEmail(sObject record) {

   }
}
