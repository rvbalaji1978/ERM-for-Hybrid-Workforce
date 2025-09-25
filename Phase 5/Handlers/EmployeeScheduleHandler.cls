public class EmployeeScheduleHandler {
    
    // Validate schedule rules
    public static void validateSchedules(List<Employee_Status__c> schedules) {
        for (Employee_Status__c sch : schedules) {
            
            // Rule 1: Start Time must be before End Time
            if (sch.Start_Time__c != null && sch.End_Time__c != null 
                && sch.Start_Time__c >= sch.End_Time__c) {
                sch.addError('Start Time must be before End Time.');
            }
            
            // Rule 2: Status must be selected
            if (String.isBlank(sch.Status__c)) {
                sch.addError('Status cannot be blank.');
            }
            
            // Rule 3: Work Mode must be selected
            if (String.isBlank(sch.Work_Mode__c)) {
                sch.addError('Work Mode is required.');
            }
        }
    }
}