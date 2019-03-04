trigger updateChildDelivery on Account (after update) {
    Set<Id> accSetID=new Set<Id>();
    for(Account ac : Trigger.new){
        accSetID.add(ac.id);
    }
    List<Delivery__c> updatelist=[select id from Delivery__c where Account__c=: accSetID];
    for(Delivery__c d :updatelist ){
        d.Delivery_Date__c=system.today();
    }
    update(updatelist);// changin the code for github 
}