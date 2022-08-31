public class Task5 {
    

    public static List<Contact> randomAssign(){
        List<Contact> allCon =  [SELECT Id FROM Contact];

        List<Contact> conList1 = new List<Contact>();
        List<Contact> conList2 = new List<Contact>();
        List<Contact> conList3 = new List<Contact>();
		
        // divide into 3 groups
        for(integer i = 0; i < allcon.size(); i++ ){
            if(i < allcon.size()/3) {
            	conList1.add(allCon[i]);
            }else if(i<2*(allcon.size()/2)){
             	 conList2.add(allCon[i]);   
            }else{
                conList3.add(allCon[i]); 
            }
        }
        
        List<Contact> updateConList1 = new List<Contact>();
        for(Contact con1:conList1){
            con1.Prior_Qualification__c = 'Below Tertiary';
            con1.Enrolment_Progression__c = 'Advanced';
            updateConList1.add(con1);
        }
        update updateConList1;
        
        List<Contact> updateConList2 = new List<Contact>();
        for(Contact con2:conList2){
            con2.Prior_Qualification__c = 'Tertiary Graduate';
            con2.Enrolment_Progression__c = 'Ultimate';
            updateConList2.add(con2);
        }
        update updateConList2;
              
        List<Contact> updateConList3 = new List<Contact>();
        for(Contact con3:conList3){
            con3.Prior_Qualification__c = 'Tertiary Post-Graduate';
            con3.Enrolment_Progression__c = 'Extra';
            updateConList3.add(con3);
        }
        update updateConList3;

        return allCon;
        
        

    }
    
    

}