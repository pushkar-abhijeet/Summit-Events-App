trigger SummitEventsAppointmentTrigger on Summit_Events_Appointments__c (after insert, after update, after delete, after undelete) {
    
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUndelete || Trigger.isUpdate || Trigger.isDelete))
         SummitEventsGeneratedItineraries.run(Trigger.new, Trigger.old);
}