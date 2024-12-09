public class RetrieveDirt {
    
    public static List<Dirt__C> getDirt(){
        
        List<Dirt__c> dirt = [SELECT Id, Name FROM Dirt__c WHERE Name = 'XYZ'];
        return dirt;
    }

}