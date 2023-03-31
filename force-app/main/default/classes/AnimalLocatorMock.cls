public class AnimalLocatorMock implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        HttpResponse response = new HttpResponse();
        if(request.getEndpoint().contains('null')){
            response.setStatusCode(400);
        }
        else{
        	response.setStatusCode(200);
        	response.setBody('{"animal":{"id":2,"name":"bear","eats":"berries, campers, adam seligman","says":"yum yum"}}');    
        }
        return response;
    }
}