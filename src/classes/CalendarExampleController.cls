public class CalendarExampleController {

@AuraEnabled
public static List<CalendarExampleWrapper.calEvent> getcalEvents() {
    String dtFormat = 'yyyy-MM-dd';

    List<CalendarExampleWrapper.calEvent> lstcalEvents = new List<CalendarExampleWrapper.calEvent>();
    //Get Contact's Birthdays
    for(Contact cont : [select Id, Birthdate, FirstName, LastName from Contact where Birthdate != null]){
        //here we need to replace the birth year with the current year so that it will show up on this years calendar
        DateTime startDT = datetime.newInstance(Date.Today().Year(),cont.Birthdate.Month(), cont.Birthdate.Day());
        CalendarExampleWrapper.calEvent bday = new CalendarExampleWrapper.calEvent();

        bday.title = cont.FirstName + ' ' + cont.LastName + '\'s Birthday!';
       // bday.allDay = true;
        bday.startString = startDT.format(dtFormat);
        //Because this is an all day event that only spans one day, we can leave the send date null
      //  bday.endString = ' ';
        bday.url = '/' + cont.Id;
      //  bday.className = 'event-birthday';
       lstcalEvents.add(bday);
    }
    return lstcalEvents;
}

}