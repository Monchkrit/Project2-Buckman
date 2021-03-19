({
    tabinit1 : function(component, event, helper) {
        component.set('v.columns1', [            
            {label: 'Map Unit Name', fieldName: 'muname__c', type: 'text'},
            {label: 'Component Name', fieldName: 'compname__c', type: 'text'},
            {label: 'Water Transmission', fieldName: 'kwfact__c', type: 'number'},
            {label: 'Geomorphic Description', fieldName: 'geomdesc__c', type: 'text'},
            {label: 'Frost Free Days', fieldName: 'ffd_r__c', type: 'text'},
            {label: 'Elevation', fieldName: 'elev_r__c', type: 'text'},
            {label: 'Drainage Class', fieldName: 'drainagecl__c', type: 'text'},
            {label: 'Available Water Storage', fieldName: 'aws025wta__c', type: 'number'},            
        ]);
    }
    
})