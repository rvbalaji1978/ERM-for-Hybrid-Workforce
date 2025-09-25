public class WellBeingAlertService {

    // Get critical alerts
    public static List<Well_Being_Alert__c> getCriticalAlerts() {
        return [
            SELECT Id, Name, Employee__c, Severity__c, Status__c, Trigger_Date__c
            FROM Well_Being_Alert__c
            WHERE Severity__c = 'Critical' AND Status__c != 'Resolved'
            ORDER BY Trigger_Date__c DESC
        ];
    }

    // Mark an alert as resolved
    public static void resolveAlert(Id alertId) {
        Well_Being_Alert__c alert = [SELECT Id, Status__c FROM Well_Being_Alert__c WHERE Id = :alertId LIMIT 1];
        alert.Status__c = 'Resolved';
        update alert;
    }
}