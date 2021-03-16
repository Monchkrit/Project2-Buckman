({
    getSoilSurveys : function(cmp) {
        let action = cmp.get("c.makeCallout");
        action.setCallback(this, function(response){
            let state = response.getState();
            if (state === "SUCCESS") {
                cmp.set("v.soilSurveys", response.getReturnValue());
            }
        });

        $A.enqueueAction(action);
    }
})