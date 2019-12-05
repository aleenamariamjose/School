public with sharing class SOQLInjectionController {
    public String name { get;set; }

    public PageReference query() {
        String param = String.escapeSingleQuotes(name);
        if(param == ''){
            return null;
        }
            
        String queryString = 'SELECT Id FROM Contact WHERE' + '(IsDeleted = false and Name like \'%' + name + '%\')';
        List<Object> queryResult = Database.query(queryString);
        System.debug('result:' + queryResult);
        return  null;
    }
}
