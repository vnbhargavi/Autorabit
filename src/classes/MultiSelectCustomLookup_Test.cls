@isTest
private class MultiSelectCustomLookup_Test{

    private static testMethod void  testMultiSelectCustomLookup(){
        Test.setCurrentPage(Page.SelectUserBasePage);
        SelectUserBaseController baseController = new SelectUserBaseController();
        // similuting the click of icon to open the custom lookup popup.
        Test.setCurrentPage(Page.UserSearchPage);
        UserSearchController customLookupController = new UserSearchController ();
        // simulating the selection of few records
        integer numberOfRecodsToSelect = (customLookupController.lstUserWrapp.size()/2)<1 ? 1 : customLookupController.lstUserWrapp.size()/2;
        for(integer i = 0; i <= numberOfRecodsToSelect; i++ ){
            customLookupController.lstUserWrapp[i].isSelected = true;
        }
        // simulating the click of 'Select' button
        customLookupController.saveResponse();
        baseController.selectedUserEmail = customLookupController.selectedUserEmail;
        baseController.selectedUserIds = customLookupController.selectedUserIds;
        baseController.selectedUserNames = customLookupController.selectedUserNames;
        
        // aserting that the selected records and their values have been passed.
        System.assert(baseController.selectedUserEmail != null);
        System.assert(baseController.selectedUserIds != null);
        System.assert(baseController.selectedUserNames != null);
    }
}