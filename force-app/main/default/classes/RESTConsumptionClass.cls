public with sharing class RESTConsumptionClass {
    // Where the callout method begins.
    public static string makeCallout()
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://47.35.26.53:19740/ssapp/survey/EcA/');
        request.setMethod('GET');
        HttpResponse response = http.send(request);

        if (response.getStatusCode() == 200) {
            Object deserializedResponse = JSON.deserializeUntyped(response.getBody());

            Map<String, Object> respMap = (Map<String, Object>) deserializedResponse;
            List<Object> records = (List<Object>) respMap.get('result');
            List<Map<String, Object>> theMap = new List<Map<String, Object>>();
            Map<String, Object> anotherMap = new Map<String, Object>();

            for (object record : records)
            {
                anotherMap = (Map<String, Object>) record;
                theMap.add(anotherMap);
                System.debug(anothermap.get('om_r'));
            }
        }
        return null;
    }
}
