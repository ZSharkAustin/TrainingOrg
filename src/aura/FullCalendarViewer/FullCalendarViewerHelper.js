({
    rerender : function(component) {
        var items = component.get("v.lstEvents");
        var data=[];
        for(var i = 0; i < items.length; i++){
            data.push({
                start: items[i].startString,
                title: items[i].title,
                url:   items[i].url
            });
        }
        $('#calendar').fullCalendar({
            eventColor: '#428bca',
            eventLimit: true,
            height: 650,
            footer: true,
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,listMonth,basicWeek,listWeek,basicDay'
            },
            events: data
        });
      
        
        
        
    }
})