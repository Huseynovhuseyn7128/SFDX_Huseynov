public class HomeworkM7_1 {
    public static void show(){ 
    List<Contact> conts = [SELECT Name FROM Contact WHERE IsDeleted = true ALL ROWS];

	System.debug(conts);
	System.debug(conts.size());
    }
}