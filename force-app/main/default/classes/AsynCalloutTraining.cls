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
        system.debug('------------------');
        List<JSON2Apex.Entries> entries = apexresponse.Entries;
        
        for (JSON2Apex.Entries entry:entries){
            system.debug('Api Name: ' + entry.API);
            system.debug('Auth Type :' + entry.Auth);
            system.debug('Category: '+ entry.Category);
            system.debug('CORS :'+ entry.Cors);
            system.debug('Description :' + entry.Description);
            system.debug('HTTP :' + entry.HTTPS);
            system.debug('Link :' + entry.Link);
            system.debug('__________');
         
            
        }
        
    }

}