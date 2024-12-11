public with sharing class BreadcrumbHandler {

    @AuraEnabled(cacheable=true)
    public static List<String> getBreadcrumbList(){

        List<String> lists = new List<String>();

        lists.add('Hello');
        lists.add('This');
        lists.add('Has');
        lists.add('Worked');

        return lists;
    }
}