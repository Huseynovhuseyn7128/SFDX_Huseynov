public class InsertContact {
    
    public static void insertrecord(){
        Account cont = new Account();
        cont.Name = 'Alex';
        
        
        insert cont;
    }
    
    public static void updaterecordname(String contactname , String newname){
        List<Contact>mylist = [Select ID from contact where firstname = :contactname limit 1];
        Contact cont = mylist.get(0);       
            cont.FirstName = newname;
            UPDATE cont;
        
    }

}