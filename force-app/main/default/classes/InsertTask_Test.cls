@IsTest
public class InsertTask_Test {
	
	static testMethod void testParse() {
		String json = '{'+
		'  \"kind\": \"tasks#task\",'+
		'  \"id\": \"WC15UFZsdjdrYkNZb19NRw\",'+
		'  \"etag\": \"\\\"LTExNjQ4OTMxNjE\\\"\",'+
		'  \"title\": \"New Task Insert\",'+
		'  \"updated\": \"2023-03-07T05:35:19.000Z\",'+
		'  \"selfLink\": \"https://www.googleapis.com/tasks/v1/lists/MDU5NjExNjkwNzY3MDMzNzMzODc6MDow/tasks/WC15UFZsdjdrYkNZb19NRw\",'+
		'  \"position\": \"00000000000000000000\",'+
		'  \"status\": \"needsAction\",'+
		'  \"links\": []'+
		'}';
		InsertTask obj = InsertTask.parse(json);
		System.assert(obj != null);
	}
}