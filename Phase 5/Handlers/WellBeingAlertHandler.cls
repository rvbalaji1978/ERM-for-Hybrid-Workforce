public class WellBeingAlertHandler {

    public static void alertManager(List<Well_Being_Alert__c> alerts) {
        for (Well_Being_Alert__c a : alerts) {
            if (a.Severity__c == 'Critical' && a.Team_Manager__c != null) {
                System.debug('Critical alert sent to manager: ' + a.Team_Manager__c); 
            }
        }
    }
}