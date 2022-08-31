trigger Task7 on Contact (after insert) {
    
        If(Trigger.isAfter){
            if(Trigger.isInsert){
                
                List<Student_Course__c> courseList = new list<Student_Course__c>();

                for(Contact con:Trigger.new){
                //Student_Course__c is the junction object name
                Student_Course__c course = new Student_Course__c();
                course.Course__c = 'a005i000008YdnDAAS'; // id of SA1
               	course.Student__c= con.id; 
                courseList.add(course);
            
				 }
            	 insert courseList;
            }
        }
}