public with sharing class AccountTriggerHandler {

    public static void populateShippingAddress(List<Account> listOfNewMap) {
        for(Account eachAccount : listOfNewMap){
                if(eachAccount.BillingStreet != null){
                    eachAccount.ShippingStreet = eachAccount.BillingStreet;
                }
                if(eachAccount.BillingState!=null){
                    eachAccount.ShippingState = eachAccount.BillingState;
                }
                if(eachAccount.BillingPostalCode!=null){
                    eachAccount.ShippingPostalCode = eachAccount.BillingPostalCode;
                }
                if(eachAccount.BillingCity!=null){
                    eachAccount.ShippingCity = eachAccount.BillingCity;
                }
                if(eachAccount.BillingCountry!=null){
                    eachAccount.ShippingCountry = eachAccount.BillingCountry;
                }
            }
        }
}

