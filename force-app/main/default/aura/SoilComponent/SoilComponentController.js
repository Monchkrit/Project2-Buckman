({
    tabinit : function(component, event, helper) {
        component.set('v.columns', [
            {label: 'AWC - Representative Value', fieldName: 'awc_r__c', type: 'number'},
            {label: 'AWS025WTA - Available Water Storage', fieldName: 'om_r__c', type: 'number'}
        ]);
    }
})
