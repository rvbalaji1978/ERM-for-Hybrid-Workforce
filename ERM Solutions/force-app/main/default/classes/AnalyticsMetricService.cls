public class AnalyticsMetricService {

    // Get all verified metrics
    public static List<Analytics_Metric__c> getVerifiedMetrics() {
        return [
            SELECT Id, Name, Source__c, Status__c, Value__c, Date__c
            FROM Analytics_Metric__c
            WHERE Status__c = 'Verified'
            ORDER BY Date__c DESC
        ];
    }

    // Insert a new metric
    public static void addMetric(String name, String source, Decimal value, Date date1) {
        Analytics_Metric__c metric = new Analytics_Metric__c(
            Name = name,
            Source__c = source,
            Value__c = value,
            Date__c = date1,
            Status__c = 'Pending'
        );
        insert metric;
    }
}