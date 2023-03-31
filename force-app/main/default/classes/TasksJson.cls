public class TasksJson {

	public String kind;
	public String etag;
	public List<Items> items;

	public class Items {
		public String kind;
		public String id;
		public String etag;
		public String title;
		public String updated;
		public String selfLink;
	}

	
	public static TasksJson parse(String json) {
		return (TasksJson) System.JSON.deserialize(json, TasksJson.class);
	}
}