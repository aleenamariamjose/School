public with sharing class AccountTriggerHelper {
  public static void checkPhoneNumberIsNotNull(Account a) {
      if(a.Phone == null) {
          // To present the user with an error that occured during a Trigger,
          // use the addError() method.
          a.addError('Please provide a phone number');
      }
  }
}
