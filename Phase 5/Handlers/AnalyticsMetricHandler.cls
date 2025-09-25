public class AnalyticsMetricHandler {

    public static void notifyVerified(List<Analytics_Metric__c> metrics, Map<Id, Analytics_Metric__c> oldMap) {
        for (Analytics_Metric__c m : metrics) {
            Analytics_Metric__c old = oldMap.get(m.Id);
            if (old.Status__c != 'Verified' && m.Status__c == 'Verified') {
                System.debug('Notify leadership: Metric verified - ' + m.Name);
            }
        }
    }
}