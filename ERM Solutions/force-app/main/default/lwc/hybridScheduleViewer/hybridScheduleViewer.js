import { LightningElement, wire } from 'lwc';
import getSchedules from '@salesforce/apex/HybridScheduleService.getSchedules';

export default class HybridScheduleList extends LightningElement {
    schedules;

    @wire(getSchedules, { employeeId: '$recordId' })
    wiredSchedules({ data, error }) {
        if (data) {
            this.schedules = data;
        } else if (error) {
            console.error(error);
        }
    }
}
