@isTest
private class Task7test {
    
    @isTest
    private static void testTask7(){
        
        Test.startTest();
        
        contact con = new contact();
        con.LastName = 'Test';
        con.Prior_Qualification__c = 'Below Tertiary';
        con.Enrolment_Progression__c = 'Advanced';
        insert con;
        
        List<Student_Course__c> courseList = [SELECT Id, Course__c FROM Student_Course__c];
        
        string courseID;
        for (Student_Course__c course:courseList){
            courseID = course.Course__c;
        }
        
        system.assertEquals('a005i000008YdnDAAS', courseID);
        
        test.stopTest();

    }

}