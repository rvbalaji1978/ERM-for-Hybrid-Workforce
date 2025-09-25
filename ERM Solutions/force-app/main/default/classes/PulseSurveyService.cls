public class PulseSurveyService {
    
    // Get surveys for a specific Employee
    public static List<Pulse_Survey__c> getSurveys(Id employeeId) {
        return [
            SELECT Id, Name, Sentiment_Score__c, Survey_Status__c, Feedback_Text__c
            FROM Pulse_Survey__c
            WHERE Employee__c = :employeeId
            ORDER BY CreatedDate DESC
        ];
    }

    // Check if survey is complete
    public static Boolean isSurveyComplete(Pulse_Survey__c survey) {
        return (survey.Feedback_Text__c != null 
                && survey.Sentiment_Score__c != null 
                && survey.Survey_Status__c == 'Submitted');
    }
}