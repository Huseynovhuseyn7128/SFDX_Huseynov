public class TasklistResponse {
public String kind;
	public String id;
	public String etag;
	public String title;
	public String updated;
	public String selfLink;

	public static TasklistResponse parse(String json) {
		return (TasklistResponse) System.JSON.deserialize(json, TasklistResponse.class);
	}
}