public with sharing class ClassSharingExample {

    public Boolean manuallyGrantReadAccessToClass(Id recordToShare, Id whoToShareWith, String accessLevel) {
        // step 1: create share object
        Class__Share classShare = new Class__Share();

        //Step 2: Set which record is being shared
        classShare.ParentId = recordToShare;

        //Step 3: Set who to share with
        classShare.UserOrGroupId = whoToShareWith;

        //Step 4: Set the account level
        classShare.AccessLevel = accessLevel;

        //Step 5: set the reason for sharing (default is manual)
        classShare.RowCause = Schema.Class__Share.RowCause.Manual;

        //Step 6: insert the sharing record and capture the save result
        Database.SaveResult sr = Database.insert(classShare, false);

        return sr.isSuccess();
    }
}
