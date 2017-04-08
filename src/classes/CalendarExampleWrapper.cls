public class CalendarExampleWrapper {
    public class calEvent{
        @AuraEnabled
        public String title {get;set;}
        //@AuraEnabled
       // public Boolean allDay {get;set;}
        @AuraEnabled
        public String startString {get;set;}
        //@AuraEnabled
        //public String endString {get;set;}
        @AuraEnabled
        public String url {get;set;}
       // @AuraEnabled
       // public String className {get;set;}
    }
}