trigger MyTriggerDescription on Account (before insert) {
    for (Account a : Trigger.New) {
        a.Description  = 'ABC New';
    }
}