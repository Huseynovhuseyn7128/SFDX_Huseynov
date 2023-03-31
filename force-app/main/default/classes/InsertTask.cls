public class InsertTask {
    
	public String kind;
	public String id;
	public String etag;
	public String title;
	public String updated;
	public String selfLink;
	public String position;
	public String status;
	public List<Links> links;

	public class Links {
	}

	
	public static InsertTask parse(String json) {
		return (InsertTask) System.JSON.deserialize(json, InsertTask.class);
	}

}