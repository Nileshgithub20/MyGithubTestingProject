trigger EmployeeTrigger on Employee__c (After undelete) {
    if(Trigger.isUnDelete){
        if(Trigger.isAfter){
            EmployeeTriggerHandler.unDeletionofEmp(Trigger.New);
        }
    }
}