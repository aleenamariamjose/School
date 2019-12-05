public with sharing class EmailUtilityClass {
  public static void sendEmail(sObject record, List<String> toAddresses, String subject, String body){
      Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

      mail.setToAddresses(toAddresses);
      mail.setSubject(subject);
      mail.setPlainTextBody(body);

      List<Messaging.SingleEmailMessage> MyMessages = new List<Messaging.SingleEmailMessage> {mail};
      Messaging.sendEmail(MyMessages);
  }

  public static void sendEmail(sObject record, List<String> toAddresses, String subject){
      sendEmail(record, toAddresses, subject, ' ');
  }

}
