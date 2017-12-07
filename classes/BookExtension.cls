public with sharing class BookExtension {

    private ApexPages.StandardController stdController;
    
    public BookExtension (ApexPages.StandardController ct) {
        this.stdController = ct;
        if( ! Test.isRunningTest()) {
            // You can't call addFields() in a test context, it's a bug test test rewrewrw
            stdController.addFields(accessibleFields);
        }
    }
    
    public List<String> accessibleFields {
        get {
            if (accessibleFields == null) {
                // Get a list (map) of all fields on the object
                Map<String, Schema.SobjectField> fields = 
                    Schema.SobjectType.Book__c.fields.getMap();
        
                // Save only the fields accessible by the current user 
                Set<String> availableFieldsSet = new Set<String>();
                for (String s : fields.keySet()) {
                    if (fields.get(s).getDescribe().isAccessible() 
                        // Comment out next line to show standard/system fields
                        && fields.get(s).getDescribe().isCustom()
                    ){
                            availableFieldsSet.add(s.toLowerCase());
                            if(Test.isRunningTest()) System.debug('Field: ' + s);
                    }
                }
                
                // Convert set to list, save to property
                accessibleFields = new List<String>(availableFieldsSet);
            }
            return accessibleFields;
        }
        private set;
    }
}