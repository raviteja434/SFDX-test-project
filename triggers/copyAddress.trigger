trigger copyAddress on Account (before insert, before update) {

    

    //for address copy
    for(Account ac : Trigger.new){
        //if(ac.Copy_Address__c==false) continue;

        //ShippingCity,ShippingCountry,ShippingPostalCode,ShippingState,ShippingStreet

        ac.BillingCity = ac.ShippingCity;
        ac.BillingCountry= ac.Shippingcountry;
        ac.BillingPostalCode= ac.ShippingPostalCode;
        ac.BillingState= ac.ShippingState;
        ac.BillingStreet= ac.ShippingStreet;

        //ac.Old_State__c = ac.State__c;
    }
}