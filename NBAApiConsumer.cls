public with sharing class NBAApiConsumer {
   public static void requestNBATeam(String city) {
       String endpoint = 'https://api-nba-v1.p.rapidapi.com/teams/city/' + city;
       String method = 'GET';

       Http http = new Http();
       HttpRequest request = new HttpRequest();

       request.setEndpoint(endpoint);
       request.setMethod(method);
       request.setHeader('', '');
       request.setHeader('', '');

       HttpResponse response = http.send(request);

       if(response.getStatusCode()== 200) {
           handleResponse(response);
       }
   }

   private static void handleResponse(HttpResponse response) {
       System.debug('All good');
       System.debug('response body: ' + response.getBody());
       System.debug('response body: ' + JSON.deserializeUntyped(response.getBody()));

       Map<String, Object> api = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
       System.debug('api: ' +api);

       Map<String, Object> apiValues = CovertToMap(api.get('api'));
        System.debug('apiValues: ' +apiValues);

   }
}
