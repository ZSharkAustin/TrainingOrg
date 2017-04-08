({
    doInit : function(component, event, helper){
        var action = component.get("c.getcalEvents");
        action.setCallback(this,function(response){
            var state = response.getState();
            if(state == "SUCCESS"){
                var result = response.getReturnValue();
                component.set("v.lstEvents",result);
                helper.rerender(component);
            }else if(state == "ERROR"){
                alert('Error in calling server side action');
            }
        });
        $A.enqueueAction(action);
        
    }
})