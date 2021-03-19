({
    tabinit2 : function(component) {
        component.set('v.columns2', [
            {label: 'Map Unit Name', fieldName: 'muname__c', type: 'text'},
            {label: 'Component Name', fieldName: 'compname__c', type: 'text'},
            {label: 'Organic Matter', fieldName: 'om_r__c', type: 'number'},
            {label: 'Runoff Class', fieldName: 'runoff__c', type: 'text'},
            {label: 'Soil Loss Tolerance', fieldName: 'tfact__c', type: 'number'},
            {label: 'Satiated H2O', fieldName: 'wsatiated_r__c', type: 'text'},
            {label: 'Slope', fieldName: 'slope_r__c', type: 'text'},
            {label: 'Non-Irrigated Capacity', fieldName: 'nirrcapcl__c', type: 'text'},
            {label: 'Category Non-Irrigated Cap', fieldName: 'nirrcapscl__c', type: 'text'},
            {label: 'Irrigated Capacity', fieldName: 'irrcapcl__c', type: 'text'},
            {label: 'Category Irrigated Cap', fieldName: 'irrcapscl__c', type: 'text'}
        ]);
    }
})