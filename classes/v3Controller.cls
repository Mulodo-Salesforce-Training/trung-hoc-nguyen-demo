public with sharing class v3Controller {

    public List<Contact> contacts {get;set;}
    
    public v3Controller()
    {
        contacts = [select id, name from Contact];
    }

}