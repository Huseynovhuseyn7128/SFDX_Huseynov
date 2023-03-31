public class DeleteRecord {  
    @InvocableMethod(label='Delete Record' description='Delete Record of an Object, Object name should be first element of the list')
    public static void remove(List<List<String>> objectAndIds){
        String objectName = objectAndIds.get(0).get(0);
        List<String> recordIds = objectAndIds.get(0).get(1).split(';');
        String query = 'SELECT Id FROM '+objectName+' WHERE Id IN :recordIds';
        List<SObject> records = Database.query(query);
        DELETE records;
    }
}