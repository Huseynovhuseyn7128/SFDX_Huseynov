public class DogApiMockCallGenerator implements HttpCalloutMock {
	
    public HttpResponse respond(HttpRequest request){
        System.assertEquals('https://api.thedogapi.com/v1/breeds', request.getEndpoint());
        System.assertEquals('GET', request.getMethod());
        System.assertEquals('live_AJFQtQbGl0phlCIzd5iJJ5XZs9lQjL48e0XtItHcTldplcbNrcnPphkr0ofs29pi', request.getHeader('x-api-key'));
        System.assertEquals('application/json', request.getHeader('Content-Type'));
        
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setBody('[{"id":1,"name":"Affenpinscher","weight":{"imperial":"6 - 13","metric":"3 - 6"},"height":{"imperial":"9 - 11.5","metric":"23 - 29"},"life_span":"10 to 13 years","bred_for":"Coursing and hunting","breed_group":"Hound","temperament":"Stubborn, Curious, Playful, Adventurous, Active, Fun-loving"},{"id":2,"name":"Afghan Hound","weight":{"imperial":"6 - 13","metric":"3 - 6"},"height":{"imperial":"9 - 11.5","metric":"23 - 29"},"life_span":"10 to 13 years","bred_for":"Coursing and hunting","breed_group":"Hound","temperament":"Stubborn, Curious, Playful, Adventurous, Active, Fun-loving"}]');
        return response;
    }
}