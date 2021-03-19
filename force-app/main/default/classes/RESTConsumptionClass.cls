public class RESTConsumptionClass {
    // Where the callout method begins.

    @AuraEnabled
    public static List<Soil_Survey__c> makeCallout1()
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
                newSurvey.muname__c = (String) anotherMap.get('muname');
                newSurvey.musym__c = String.valueOf(anotherMap.get('musym'));
                newSurvey.awc_r__c = (Decimal) anotherMap.get('awc_r');
                newSurvey.om_r__c = (Decimal) anotherMap.get('om_r');
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
                surveyList.add(newSurvey);
            }
            return surveyList;
        }
        System.debug(surveyList);
        return surveyList;
    }

    @AuraEnabled
    public static List<Soil_Survey__c> makeCallout2()
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
                newSurvey.muname__c = (String) anotherMap.get('muname');
                newSurvey.compname__c = (String) anotherMap.get('compname');
                newSurvey.ph1to1h2o_r__c = (Decimal) anotherMap.get('ph1to1h2o_r');
                newSurvey.runoff__c = (String) anotherMap.get('runoff');
                newSurvey.slope_r__c = String.valueOf(anotherMap.get('slope_r'));
                newSurvey.tfact__c = (Integer) anotherMap.get('tfact');
                newSurvey.wsatiated_r__c = String.valueOf(anotherMap.get('wsatiated_r'));
                newSurvey.nirrcapcl__c = String.valueOf(anotherMap.get('nirrcapcl'));
                newSurvey.nirrcapscl__c = String.valueOf(anotherMap.get('nirrcapscl'));
                newSurvey.irrcapcl__c = String.valueOf(anotherMap.get('irrcapcl'));
                newSurvey.irrcapscl__c = String.valueOf(anotherMap.get('irrcapscl'));
                surveyList.add(newSurvey);
            }
            return surveyList;
        }
        System.debug(surveyList);
        return surveyList;
    }
}