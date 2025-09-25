public class PulseSurveyHandler {

    public static void notifyHR(List<Pulse_Survey__c> surveys) {
        for (Pulse_Survey__c s : surveys) {
            if (s.Survey_Status__c == 'Submitted') {
                System.debug('Notify HR about submitted survey: ' + s.Name);
            }
        }
    }
}