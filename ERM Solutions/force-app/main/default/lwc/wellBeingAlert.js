import { LightningElement, wire } from 'lwc';
import getCriticalAlerts from '@salesforce/apex/WellBeingAlertService.getCriticalAlerts';

export default class WellBeingAlert extends LightningElement {
    alerts;

    @wire(getCriticalAlerts)
    wiredAlerts({ error, data }) {
        if (data) {
            this.alerts = data;
        } else if (error) {
            this.alerts = [];
        }
    }

    handleAcknowledge(event) {
        const alertId = event.target.dataset.id;
        this.dispatchEvent(new CustomEvent('alertack', { detail: alertId }));
    }
}
