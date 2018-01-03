public with sharing class cls {

    public String getContact() {
        return null;
    }


    public List<Contact> contacts {get;set;}
    public cls(){
        contacts = [select id from contact];
    }
}