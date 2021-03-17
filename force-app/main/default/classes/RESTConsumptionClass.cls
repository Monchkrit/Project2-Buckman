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
                newSurvey.awc_r__c = (Decimal) anotherMap.get('awc_r');
                newSurvey.aws025wta__c = (Decimal) anotherMap.get('aws025wta');
                newSurvey.chkey__c = (Integer) anotherMap.get('chkey');
                newSurvey.cokey__c = (Integer) anotherMap.get('cokey');
                newSurvey.compname__c = (String) anotherMap.get('compname');
                newSurvey.drainagecl__c = (String) anotherMap.get('drainagecl');
                newSurvey.elev_r__c = (Integer) anotherMap.get('elev_r');
                newSurvey.ffd_r__c = (Integer) anotherMap.get('ffd_r');
                newSurvey.geomdesc__c = (String) anotherMap.get('geomdesc');
                if (anotherMap.get('irrcapscl') == null)
                {
                    newSurvey.irrcapscl__c = null;
                }
                
                newSurvey.kwfact__c = (Decimal) anotherMap.get('kwfact');
                newSurvey.mukey__c = (Integer) anotherMap.get('mukey');
                newSurvey.muname__c = (String) anotherMap.get('muname');
                newSurvey.musym__c = (Decimal) anotherMap.get('musym');
                newSurvey.nirrcapcl__c = (Decimal) anotherMap.get('nirrcapcl');
                newSurvey.om_r__c = (Decimal) anotherMap.get('om_r');
                newSurvey.ph1to1h2o_r__c = (Decimal) anotherMap.get('ph1to1h2o_r');
                newSurvey.runoff__c = (String) anotherMap.get('runoff');
                newSurvey.slope_r__c = (Integer) anotherMap.get('slope_r');
                newSurvey.tfact__c = (Integer) anotherMap.get('tfact');
                newSurvey.wsatiated_r__c = (Integer) anotherMap.get('wsatiated_r');
                System.debug(anotherMap.get('musym'));
                surveyList.add(newSurvey);
            }
            //return surveyList;
        }
        // System.debug(surveyList);
        return surveyList;
    }
}