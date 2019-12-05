public class CollectionExamples {
    
    public static void firstList(){
        // List are ordered collections of items. Think ArrayList
        // Lists can contain duplicates.
        List<Integer> myGrades=new List<Integer>();
        
        myGrades.add(74);
        myGrades.add(80);
        myGrades.add(85);
        
        //print All Grades
        System.debug('My Grades:' + myGrades);
        
        //print first Grade
        System.debug('First Grade:' +myGrades[0]);
    }
    
    public static void secondList(){
        //List<String> associates = new String[1];
        List<String> associates = new List<String> {'Ike', 'Greg', 'Christian', 'Aleena'};
            
            for (Integer i = 0; i< associates.size(); i++) {
                System.debug('Name: '+associates[i]);
            }    
    }
    public static void thirdList() {
        List<Account> accList = new List<Account>();
        
        Account aleena = new Account();// first method
        aleena.Name = 'Aleena';
        accList.add(aleena);
        
        Account ike = new Account(Name='Ike');// second method
        accList.add(ike);
        
        accList.add(new Account(Name='Greg')); //third method
        
        for (Integer i = 0; i< accList.size(); i++) {
                System.debug('Name: '+accList[i].Name);
            } 
        
        // List or set iteration for loop
        for(Account a:accList){
            System.debug('Name ' + a.Name );
        }
    }
    
    public static void firstSet(){
        //A set is an unordered collection of elements that do not contain duplicates.
        //Since a set is unordered, you cannot access a set element at a specific index.
        //you can only iterate over set elements.
        Set<String> associates = new Set<String> {'Ike', 'Greg', 'Christian', 'Aleena'};
        System.debug('Associates: ' + Associates);
        associates.add('Greg');
        System.debug('Associates: ' + Associates);
        
    }
    
    public static void firstMap() {
        // A map is a collection of key value pairs for each unique key maps to a single value.
        // keys and values can be any type, including collections.
        //  Adding a map entry with a key that matches an existing key will overwrite the previous entry.
        //   Map keys of type String are case-sensitive.
        Map<String, Integer> monthToDays = new Map<String, Integer>();
        monthToDays.put('Jan', 31);
        monthToDays.put('Feb', 28);
        System.debug('Jan: ' + monthToDays.get('Jan'));
        
        monthToDays.put('Jan' , 30);
        System.debug('Jan:'+ monthToDays.get('Jan'));
    }
}