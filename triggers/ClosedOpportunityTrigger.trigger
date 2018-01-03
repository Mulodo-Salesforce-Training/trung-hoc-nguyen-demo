trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    list<task> a = new list<task>();
    for(Opportunity o: Trigger.New)
        if(o.stagename == 'Closed Won')
            a.add(new Task(Subject='Follow Up Test Task', WhatId=o.Id));
    insert a;
}