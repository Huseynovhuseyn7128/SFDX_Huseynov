public class TasklistResponseParsed {
	public String kind;
	public String id;
	public String etag;
	public String title;
	public String updated;
	public String selfLink;
    
	public static TasklistResponseParsed parse(String json) {
		return (TasklistResponseParsed) System.JSON.deserialize(json, TasklistResponseParsed.class);
	}
}