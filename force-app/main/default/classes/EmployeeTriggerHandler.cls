public class EmployeeTriggerHandler {
    public static void unDeletionofEmp(List<Employee__c> empList){
        List<Employee__c> empListToBeUpdated = new
            List<Employee__c>();
        for(Employee__c emp : empList){
            Employee__c e = new Employee__c();
            e.Id = emp.Id;
            e.Active__c = true;
            empListToBeUpdated.add(e);
        } if(!empListToBeUpdated.isEmpty()){
            update empListToBeUpdated;
        }
    }
}