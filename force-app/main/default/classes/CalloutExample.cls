public class CalloutExample {
    public static void makeCall(){
        
        HttpRequest request = New httpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        
        Http httpobj = New Http();
        httpobj.send(request);
        
      
        HttpResponse response = httpobj.send(request);
        
        system.debug(response);
        
        if (response.getStatusCode()==200){
            String responseBody = response.getBody();
       	    map<String, Object>apexresponse = (map<String, Object>) Json.deserializeUntyped(responseBody);
            for (String key:apexresponse.keySet()){
            	List <Object> objects = (List <Object>) apexresponse.Get(key);
                for (Object obj:objects){
                    System.debug(obj);
                }
        }
        
        
        }
      
    }

}