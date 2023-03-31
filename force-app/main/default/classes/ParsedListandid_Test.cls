@IsTest
public class ParsedListandid_Test {
	
	static testMethod void testParse() {
		String json = '{'+
		'  \"kind\": \"tasks#task\",'+
		'  \"id\": \"NVlYMElsUHIxUDRaQVBVcg\",'+
		'  \"etag\": \"\\\"LTExNzI5NjEzMzU\\\"\",'+
		'  \"title\": \"Task 3\",'+
		'  \"updated\": \"2023-03-07T03:20:51.000Z\",'+
		'  \"selfLink\": \"https://www.googleapis.com/tasks/v1/lists/MDU5NjExNjkwNzY3MDMzNzMzODc6MDow/tasks/NVlYMElsUHIxUDRaQVBVcg\",'+
		'  \"position\": \"00000000000000000000\",'+
		'  \"notes\": \"Assignment 9\",'+
		'  \"status\": \"needsAction\",'+
		'  \"due\": \"2023-03-15T00:00:00.000Z\",'+
		'  \"links\": []'+
		'}';
		ParsedListandid obj = ParsedListandid.parse(json);
		System.assert(obj != null);
	}
}