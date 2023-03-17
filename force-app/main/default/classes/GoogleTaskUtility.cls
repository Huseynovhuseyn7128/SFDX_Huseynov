public class GoogleTaskUtility {
    public static String insertTasklist(String title){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Google_Connect/tasks/v1/users/@me/lists');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        String body = '{ "title": "'+title+'" }';
        request.setBody(body);
        
        Http obj = new Http();
        HttpResponse response = obj.send(request);
        if(response.getStatusCode() == 200){
            TasklistResponse apexResponse = TasklistResponse.parse(response.getBody());
            return apexResponse.Id;
        }
        else{
            throw new GoogleTasklistException('Error: Tasklist Insertion error. Error Code: '+response.getStatusCode());
        }
    }

}