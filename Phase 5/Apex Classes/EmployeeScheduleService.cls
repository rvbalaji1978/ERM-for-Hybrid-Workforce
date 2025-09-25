public class EmployeeScheduleService {

    public static List<Hybrid_Schedule__c> getSchedulesByEmployee(Id employeeId) {
        List<Hybrid_Schedule__c> schedules = [
            SELECT Id, Work_Mode__c, Status__c, Start_Time__c, End_Time__c, 
                   Schedule_Date__c, Notes__c, Manager__c, Employee__c
            FROM Hybrid_Schedule__c
            WHERE Employee__c = :employeeId
            ORDER BY Schedule_Date__c DESC
        ];
        return schedules;
    }
}