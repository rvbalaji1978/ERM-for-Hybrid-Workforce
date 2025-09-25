public class HybridScheduleService {

    // 1. Get all schedules for a specific employee
    public static List<Hybrid_Schedule__c> getSchedulesByEmployee(Id employeeId) {
        return [
            SELECT Id, Name, Schedule_Date__c, Work_Mode__c, Status__c,
                   Start_Time__c, End_Time__c, Notes__c,
                   Employee__c, Employee__r.Name, Manager__c, Manager__r.Name
            FROM Hybrid_Schedule__c
            WHERE Employee__c = :employeeId
            ORDER BY Schedule_Date__c DESC
        ];
    }

    // 2. Insert a new schedule (sets Name so object doesn't fail if Name is required)
    public static Id createSchedule(Id employeeId, Id managerId, Date scheduleDate,
                                    String workMode, Time startTime, Time endTime, String notes) {
        Hybrid_Schedule__c schedule = new Hybrid_Schedule__c(
            Name = 'Schedule-' + String.valueOf(scheduleDate) + '-' + String.valueOf(employeeId), // default Name
            Employee__c = employeeId,
            Manager__c = managerId,
            Schedule_Date__c = scheduleDate,
            Work_Mode__c = workMode,
            Start_Time__c = startTime,
            End_Time__c = endTime,
            Notes__c = notes,
            Status__c = 'Pending'
        );
        insert schedule;
        return schedule.Id;
    }

    // 3. Approve a schedule
    public static void approveSchedule(Id scheduleId) {
        Hybrid_Schedule__c schedule = [SELECT Id, Status__c FROM Hybrid_Schedule__c WHERE Id = :scheduleId LIMIT 1];
        schedule.Status__c = 'Approved';
        update schedule;
    }

    // 4. Reject a schedule and append rejection reason in Notes
    public static void rejectSchedule(Id scheduleId, String rejectionReason) {
        Hybrid_Schedule__c schedule = [SELECT Id, Status__c, Notes__c FROM Hybrid_Schedule__c WHERE Id = :scheduleId LIMIT 1];
        schedule.Status__c = 'Rejected';
        schedule.Notes__c = (schedule.Notes__c == null ? '' : schedule.Notes__c + '\n') + 'Rejected: ' + rejectionReason;
        update schedule;
    }
}