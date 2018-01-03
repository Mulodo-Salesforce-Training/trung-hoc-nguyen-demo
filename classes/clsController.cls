public with sharing class clsController {

    List<Contact> contacts = [select id, Name from Contact];
    
    public List<Contact> getcontacts()
    {
        System.debug('get contacts');
        return contacts;
    }
}