public with sharing class MapPractice {
    
    public static void mapMethod(){

        List<Map<Id, String>> helloMap = new List<Map<Id, String>>();

        List<Opportunity> opps = [SELECT Id, Name FROM Opportunity];
        List<Account> accs = [SELECT Id, Name FROM Account];
        List<Case> cases = [SELECT Id, CaseNumber FROM Case];

        Map<Id, String> oppMap = new Map<Id, String>();
        Map<Id, String> accMap = new Map<Id, String>();
        Map<Id, String> caseMap = new Map<Id, String>();

        for (Opportunity opp : opps){
            oppMap.put(opp.Id, opp.Name);
        }
        for (Account acc : accs){
            accMap.put(acc.Id, acc.Name);
        }
        for (Case c : cases){
            caseMap.put(c.Id, c.CaseNumber);
        }

        helloMap.add(oppMap);
        helloMap.add(accMap);
        helloMap.add(caseMap);
    }
}