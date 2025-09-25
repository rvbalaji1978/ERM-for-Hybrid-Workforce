public with sharing class ExternalCalloutSample {
  
    public static String getStressScore(Id employeeId) {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        
        req.setEndpoint('callout:ERM_API/v1/employee/' + String.valueOf(employeeId) + '/stress');
        
        req.setMethod('GET');

        HttpResponse res = http.send(req);
        
        if (res.getStatusCode() == 200) {
            return res.getBody();
        }

        throw new CalloutException('Callout failed: ' + res.getStatus() + ' - ' + res.getBody());
    }
}