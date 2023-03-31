public class dogBreedResponse {
    
    

	public Integer id;
	public String name;
	public Weight weight;
	public weight height;
	public String life_span;
	public String bred_for;
	public String breed_group;
    
    public class Weight{
        public string imperial;
        public string metric;
        
    }

	
	public static List<DogBreedResponse> parse(String json) {
		return (List<DogBreedResponse>) System.JSON.deserialize(json, List<DogBreedResponse>.class);
	}
}