({
    getSoilSurveys1 : function(cmp) {
        let action = cmp.get('c.makeCallout1');
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.soilSurveys1", response.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    },
    getSoilSurveys2 : function(cmp) {
        let action = cmp.get('c.makeCallout2');
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.soilSurveys2", response.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    }
})