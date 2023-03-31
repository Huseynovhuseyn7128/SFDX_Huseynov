public class DogApiCallOut {
    @future(callout = true)
    public static void getBreeds(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.thedogapi.com/v1/breeds');
        request.setMethod('GET');
        request.setCompressed(true);
        request.setHeader('x-api-key', 'live_AJFQtQbGl0phlCIzd5iJJ5XZs9lQjL48e0XtItHcTldplcbNrcnPphkr0ofs29pi');
		request.setHeader ( 'Content-Type','application/json'); 
        
        
         Http httpobj = new Http();
         HttpResponse response = httpobj.send(request);
        
        if(response.getStatusCode()==200){
             
            List<DogBreedResponse> dogsinfo = dogBreedResponse.parse(response.getBody());
            
            for (DogBreedResponse  dog :dogsinfo){
                System.debug ('bred_for :' + dog.bred_for);
                System.debug ('group :' + dog.breed_group);
                System.debug ('height: ' + dog.height);
                System.debug ('Id :' + dog.id);
                System.debug ('Life Span: ' + dog.life_span);
                System.debug ('Name: ' + dog.name);
                System.debug ('weight:  ' + dog.weight);
                
            }
        }
         
    }

}