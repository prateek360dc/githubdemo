trigger AccountTrigger on SOBJECT (before insert) {
    if(Trigger.isInsert){
        AccountTriggerHandler.populateShippingAddress(Trigger.new);
    }
}