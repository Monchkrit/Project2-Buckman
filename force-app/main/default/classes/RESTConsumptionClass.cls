public with sharing class RESTConsumptionClass {
    // Where the callout method begins.
    @AuraEnabled
    public static List<Soil_Survey__c> makeCallout()
    {
        List<Soil_Survey__c> surveyList = new List<Soil_Survey__c>();
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://47.35.26.53:19740/ssapp/survey/EcA/');
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            Object deserializedResponse = JSON.deserializeUntyped(response.getBody());

            Map<String, Object> respMap = (Map<String, Object>) deserializedResponse;
            List<Object> records = (List<Object>) respMap.get('result');
            
            Map<String, Object> anotherMap = new Map<String, Object>();
            
            for (object record : records)
            {
                anotherMap = (Map<String, Object>) record;
                
                Soil_Survey__c newSurvey = new Soil_Survey__c();
                newSurvey.irrcapscl__c = (String) anotherMap.get('irrcapscl');
                newSurvey.musym__c = (String) anotherMap.get('musym');
                newSurvey.mukey__c = (Integer) anotherMap.get('mukey');
                newSurvey.kwfact__c = (Decimal) anotherMap.get('kwfact');
                newSurvey.geomdesc__c = (String) anotherMap.get('geomdesc');
                newSurvey.ffd_r__c = String.valueOf(anotherMap.get('ffd_r'));
                newSurvey.elev_r__c = String.valueOf(anotherMap.get('elev_r'));
                newSurvey.drainagecl__c = (String) anotherMap.get('drainagecl');
                newSurvey.compname__c = (String) anotherMap.get('compname');
                newSurvey.cokey__c = (Integer) anotherMap.get('cokey');                
                newSurvey.chkey__c = (Integer) anotherMap.get('chkey');
                newSurvey.aws025wta__c = (Decimal) anotherMap.get('aws025wta');
                newSurvey.awc_r__c = (Decimal) anotherMap.get('awc_r');
                newSurvey.muname__c = (String) anotherMap.get('muname');
                newSurvey.om_r__c = (Decimal) anotherMap.get('om_r');
                newSurvey.ph1to1h2o_r__c = (Decimal) anotherMap.get('ph1to1h2o_r');
                newSurvey.runoff__c = (String) anotherMap.get('runoff');
                newSurvey.slope_r__c = String.valueOf(anotherMap.get('slope_r'));
                newSurvey.tfact__c = (Integer) anotherMap.get('tfact');
                newSurvey.wsatiated_r__c = String.valueOf(anotherMap.get('wsatiated_r'));
                
                surveyList.add(newSurvey);
            }
            return surveyList;
        }
        System.debug(surveyList);
        return surveyList;
    }
}