public with sharing class MapPractice {
    
    public static void mapMethod(){

        List<Map<Id, String>> helloMap = new List<Map<Id, String>>();

        List<Opportunity> opps = [SELECT Id, Name FROM Opoprtunity];
        List<Opportunity> accs = [SELECT Id, Name FROM Accounts];
        List<Opportunity> cases = [SELECT Id, Name FROM Cases];

        Map<Id, String> oppMap = new Map<Id, String>(opps);
        Map<Id, String> accMap = new Map<Id, String>(accs);
        Map<Id, String> caseMap = new Map<Id, String>(cases);

        for (Opportunity opp : opps){
            oppMap.put(opp.Id, opp.Name);
        }
        for (Account acc : accs){
            accMap.put(acc.Id, acc.Name);
        }
        for (Case case : cases){
            caseMap.put(case.Id, case.Name);
        }

        helloMap.add(oppMap, accMap, caseMap);
    }
}