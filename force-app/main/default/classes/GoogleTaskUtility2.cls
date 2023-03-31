public class GoogleTaskUtility2 {
    public class GoogleTaskListException extends Exception{}
    public static  void getAllTasks( ){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Google_Connect/tasks/v1/users/@me/lists');
        request.setMethod('GET');
         Http obj = new Http();
    	 HttpResponse response = obj.send(request);
       
       if (response.getStatusCode()==200){
           TasksJson apexresponse = TasksJson.parse(response.getBody());
           for(TasksJson.Items item : apexresponse.items){
               system.debug('Tasklist Id :' + item.id);
               system.debug('Task Title :' + item.title);
               System.debug('---------------');
           }
           
       }
       else{
           throw new GoogleTaskListException('Error Code:' + response.getStatusCode());
       }
    }
   
    public static void getallTasks(String tasklistId){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Google_Connect/tasks/v1/users/@me/lists/'+ tasklistID);
        request.setMethod('GET');
        
        Http obj = new Http();
    	HttpResponse response = obj.send(request);
        
        if (response.getStatusCode()==200){
            TasklistResponseParsed item2 = TasklistResponseParsed.parse(response.getBody());
            system.debug ('Response Id: ' + item2.id);
            system.debug ('Response Title: ' + item2.title);
            system.debug ('Response Etag: ' + item2.etag);
        }
        
        else{
            throw new GoogleTaskListException('Error code: ' + response.getStatusCode());
        }
        
        
    }
    
    public static void getTaskInfo(String tasklistID, String taskID){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Google_Connect/tasks/v1/lists/'+tasklistID+'/tasks/'+taskID);
        request.setMethod('GET');
        
        Http obj = new Http();
    	HttpResponse response = obj.send(request);
        if (response.getStatusCode()==200){
            ParsedListandid items2 = ParsedListandid.parse(response.getBody());
           
                system.debug('Task ID: '+items2.id);
                system.debug('Task Title: '+items2.title);
                system.debug('Task Due: '+items2.due); 
           
        }
            
        else{
            throw new GoogleTaskListException('Error code: ' + response.getStatusCode());
        }
  
        }
    
    public static string insertTask(String title, String tasklistID){
        HttpRequest request  = new HttpRequest();
        request.setEndpoint('callout:Google_Connect/tasks/v1/lists/'+tasklistID+'/tasks');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        String body = '{ "title": "'+title+'" }';
        request.setBody(body);
        
        Http obj = new Http();
    	HttpResponse response = obj.send(request);
        if (response.getStatusCode()==200){
            InsertTask insTask = InsertTask.parse(response.getBody());
            system.debug('Insert'+ insTask.id);
            system.debug('Title:'+ insTask.title);
            return insTask.id;
            
            }
         else{
            throw new GoogleTasklistException('Error: Tasklist Insertion error. Error Code: '+response.getStatusCode());
              }   
                                           
    
        
        
       }
    
    public static void updateTask(String NewTitle, String TaskId, String TaskListId){
        HttpRequest request  = new HttpRequest();
        request.setEndpoint('callout:Google_Connect/tasks/v1/lists/'+TaskListId+'/tasks/'+TaskId);
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json');
        String body = '{ "title": "'+NewTitle+'" }';
        request.setBody(body);
        
        Http obj = new Http();
    	HttpResponse response = obj.send(request);
        if (response.getStatusCode()==200){
    }

}
    
     }