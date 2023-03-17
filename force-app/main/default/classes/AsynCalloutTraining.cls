public class AsynCalloutTraining {
    @future (callout = true)
    Public static void makecall (){        
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.publicapis.org/entries');
        request.setMethod('GET');
        request.setCompressed(true);
        
         Http httpobj = new Http();
         HttpResponse response = httpobj.send(request);    
         System.debug(response.getBody());
     	
        JSON2Apex apexresponse = new JSON2Apex();
         apexresponse = JSON2Apex.parse(response.getBody());
        system.debug('Number of entries '+ apexresponse.count);
        List<JSON2Apex.Entries> entries = apexresponse.Entries;
        
        for (JSON2Apex.Entries entry:entries){
            system.debug('' + entry.API);
            system.debug('' + entry.Auth);
            system.debug(''+ entry.Category);
            system.debug(''+ entry.Cors);
            system.debug('' + entry.Description);
            system.debug('' + entry.HTTPS);
            system.debug('' + entry.Link);
            system.debug('__________');
         
            
        }
        
    }

}