({
    tabinit1 : function(component, event, helper) {
        component.set('v.columns1', [            
            {label: 'Map Unit Name', fieldName: 'muname__c', type: 'text'},
            
            {label: 'Component Name', fieldName: 'compname__c', type: 'text'},
            {label: 'Soil Water Storage', fieldName: 'awc_r__c', type: 'number'},
            {label: 'pH H2O', fieldName: 'ph1to1h2o_r__c', type: 'number'},
            {label: 'Water Transmission', fieldName: 'kwfact__c', type: 'number'},
            {label: 'Geomorphic Description', fieldName: 'geomdesc__c', type: 'text'},
            {label: 'Frost Free Days', fieldName: 'ffd_r__c', type: 'text'},
            {label: 'Elevation', fieldName: 'elev_r__c', type: 'text'},
            {label: 'Drainage Class', fieldName: 'drainagecl__c', type: 'text'},
            {label: 'Available Water Storage', fieldName: 'aws025wta__c', type: 'number'},            
        ]);
    }
    
})