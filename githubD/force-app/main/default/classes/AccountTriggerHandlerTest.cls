private class AccountTriggerHandlerTest {

    @TestSetup
    static void makeData(){
        List<Account> tempAcctList = new List<Account>();
        Account acct = new Account();
        acct.Name = 'Test Account 1';
        acct.BillingStreet = '3022  Strother Street';
        acct.BillingCity = 'Into';
        acct.BillingState = 'Alabama';
        acct.BillingPostalCode = '35222';
        acct.BillingCountry = 'US';
        tempAcctList.add(acct);
        insert tempAcctList;
    }

    @isTest
    static void test1(){
        Test.startTest();
        Account acct = [SELECT Id , BillingStreet , BillingCity , BillingState , BillingPostalCode , BillingCountry , ShippingStreet , ShippingCity , ShippingState , ShippingPostalCode , ShippingCountry FROM Account WHERE Name = 'Test Account 1' LIMIT 1];

        system.assertEquals(acct.BillingStreet , acct.ShippingStreet);
        system.assertEquals(acct.BillingCity ,   acct.ShippingCity);
        system.assertEquals(acct.BillingState , acct.ShippingState);
        system.assertEquals(acct.BillingPostalCode , acct.ShippingPostalCode);
        system.assertEquals(acct.BillingCountry , acct.ShippingCountry);
        
        Test.stopTest();

    }
}
