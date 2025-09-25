public class HybridScheduleHandler {

    // Prevent overlapping schedules
    public static void preventOverlaps(List<Hybrid_Schedule__c> schedules) {
        Set<Id> empIds = new Set<Id>();
        for (Hybrid_Schedule__c s : schedules) empIds.add(s.Employee__c);

        List<Hybrid_Schedule__c> existing = [SELECT Employee__c, Schedule_Date__c, Start_Time__c, End_Time__c 
                                             FROM Hybrid_Schedule__c 
                                             WHERE Employee__c IN :empIds];

        for (Hybrid_Schedule__c s : schedules) {
            for (Hybrid_Schedule__c ex : existing) {
                if (s.Employee__c == ex.Employee__c && s.Schedule_Date__c == ex.Schedule_Date__c &&
                    s.Start_Time__c < ex.End_Time__c && s.End_Time__c > ex.Start_Time__c) {
                        s.addError('Schedule overlaps with existing schedule.');
                }
            }
        }
    }

    public static void notifyManager(List<Hybrid_Schedule__c> schedules) {
        for (Hybrid_Schedule__c s : schedules) {
            if (s.Manager__c != null) {
                System.debug('Notify manager ' + s.Manager__r.Name + ' for schedule: ' + s.Name);
            }
        }
    }
}