import List;

public with sharing class BreadcrumbHandler {
    public BreadcrumbHandler() {

    }

    @AuraEnabled(cacheable=true)
    public static List<String> getBreadcrumbList(){

        List<String> list = new List<String>();

        list.add('Hello');
        list.add('This');
        list.add('Has');
        list.add('Worked');

        return list;
    }

}