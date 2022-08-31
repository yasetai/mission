@isTest
private class Task5Test {

    @isTest 
    // Test 1
    private static void testrandomAssign1(){
        
        system.test.startTest();

        List<Contact> testCon = new list<Contact>();
        contact con1 = new Contact();
        con1.lastname = 'Test';
        con1.Prior_Qualification__c = 'Below Tertiary';
        con1.Enrolment_Progression__c = 'Advanced';
        testCon.add(con1);
        
        contact con2 = new Contact();
        con2.lastname = 'Test';
        con2.Prior_Qualification__c = 'Tertiary Graduate';
        con2.Enrolment_Progression__c = 'Ultimate';
        testCon.add(con2);
        
        contact con3 = new Contact();
        con3.lastname = 'Test';
        con3.Prior_Qualification__c = 'Below Tertiary';
        con3.Enrolment_Progression__c = 'Advanced';
        testCon.add(con3);
        
        insert testCon;

	    Task5.randomAssign();
        
        List<contact> conList1 = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact where Prior_Qualification__c = 'Below Tertiary'];
        
        String enrol;
        for(Contact co1:conList1){
            enrol = co1.Enrolment_Progression__c;
        }
        
        system.assertEquals('Advanced', enrol);

       	system.test.stopTest();
  
  }
    
 	//Test 2
    @isTest  
     private static void testrandomAssign2(){
         
        List<Contact> testCon = new list<Contact>();
        contact con1 = new Contact();
        con1.lastname = 'Test';
        con1.Prior_Qualification__c = 'Tertiary Post-Graduate';
        con1.Enrolment_Progression__c = 'Extra';
        testCon.add(con1);
        
        contact con2 = new Contact();
        con2.lastname = 'Test';
        con2.Prior_Qualification__c = 'Tertiary Graduate';
        con2.Enrolment_Progression__c = 'Ultimate';
        testCon.add(con2);
        
        contact con3 = new Contact();
        con3.lastname = 'Test';
        con3.Prior_Qualification__c = 'Below Tertiary';
        con3.Enrolment_Progression__c = 'Advanced';
        testCon.add(con3);
        
        insert testCon;
        
        contact con = new Contact();
        con.lastname = 'Test';
        con.Prior_Qualification__c = 'Tertiary Graduate';
        con.Enrolment_Progression__c = 'Ultimate';
        insert con;
        
        
        system.test.startTest();
     
        Task5.randomAssign();   
        
       
        List<contact> conList2 = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact where Prior_Qualification__c = 'Tertiary Graduate'];
        
        String enrol2;
        for(Contact co2:conlist2){
            enrol2 = co2.Enrolment_Progression__c;
        }
        
        system.assertEquals('Ultimate', enrol2);
        
        system.test.stopTest();
        
   }
    // Test 3
	@isTest
    private static void testrandomAssign3(){
        
        List<Contact> testCon = new list<Contact>();
        contact con1 = new Contact();
        con1.lastname = 'Test';
        con1.Prior_Qualification__c = 'Tertiary Post-Graduate';
        con1.Enrolment_Progression__c = 'Extra';
        testCon.add(con1);
        
        contact con2 = new Contact();
        con2.lastname = 'Test';
        con2.Prior_Qualification__c = 'Tertiary Graduate';
        con2.Enrolment_Progression__c = 'Ultimate';
        testCon.add(con2);
        
        contact con3 = new Contact();
        con3.lastname = 'Test';
        con3.Prior_Qualification__c = 'Below Tertiary';
        con3.Enrolment_Progression__c = 'Advanced';
        testCon.add(con3);
        
        insert testCon;

        system.test.startTest();
    
        Task5.randomAssign(); 
        
        
        List<contact> conList3 = [SELECT Id, Prior_Qualification__c, Enrolment_Progression__c FROM Contact where Prior_Qualification__c = 'Tertiary Post-Graduate'];
        
        String enrol3;
        for(Contact co3:conlist3){
            enrol3 = co3.Enrolment_Progression__c;
        }
        
        system.assertEquals('Extra', enrol3);

        system.test.stopTest();
        
    }


}