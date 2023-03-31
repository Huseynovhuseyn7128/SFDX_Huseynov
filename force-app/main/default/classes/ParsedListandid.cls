public class ParsedListandid {

	public String kind;
	public String id;
	public String etag;
	public String title;
	public String updated;
	public String selfLink;
	public String position;
	public String notes;
	public String status;
	public String due;
	public List<Links> links;

	public class Links {
	}
    
	public static ParsedListandid parse(String json) {
		return (ParsedListandid) System.JSON.deserialize(json, ParsedListandid.class);
	}

    }