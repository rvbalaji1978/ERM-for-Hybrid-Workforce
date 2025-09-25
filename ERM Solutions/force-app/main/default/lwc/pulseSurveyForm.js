import { LightningElement, track } from 'lwc';
import submitSurvey from '@salesforce/apex/PulseSurveyService.submitSurvey';

export default class PulseSurveyForm extends LightningElement {
    @track feedback = '';
    @track score = null;

    handleFeedback(event) {
        this.feedback = event.target.value;
    }
    handleScore(event) {
        this.score = event.target.value;
    }

    submitSurvey() {
        submitSurvey({ employeeId: '005...', feedback: this.feedback, score: this.score })
            .then(result => {
                alert(result);
                this.feedback = '';
                this.score = null;
            })
            .catch(error => {
                console.error(error);
            });
    }
}
