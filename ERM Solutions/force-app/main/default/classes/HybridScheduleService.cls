public with sharing class HybridScheduleService {
    
    @AuraEnabled(cacheable=true)
    public static List<Schedule__c> getSchedules() {
        // Your logic to return schedule records
    }
}
