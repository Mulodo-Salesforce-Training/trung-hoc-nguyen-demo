trigger ContactBeforeInsert on Contact (before insert) {
    for(Contact c : Trigger.new){
             if(c.LastName == 'test'){
                    c.Description = 'Special contact';
            }
        }
}