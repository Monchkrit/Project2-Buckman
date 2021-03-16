({
    doInit : function(cmp, event, helper) {
        CompositionEvent.set("v.tableColumns", [
            {label: 'Col1', fieldName: 'Col1', type: 'text'},
            {label: 'Col2', fieldName: 'Col2', type: 'text'}
            // etc etc
        ])
    },
    getSoilSurveys : function(cmp) {
        let action = cmp.get("c.makeCallout");
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.soil", response.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    }
})