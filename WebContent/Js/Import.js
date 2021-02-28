


$(document).ready(function(){
	
	
	
    $("#role").click(function(){
        var role=$("#role").val();
        
        if(role=="Student"){
            
            $("#StudentAction").show('slow')
            
            //  $("#StudentAction").slideDown(2000);
             
             $("#TeacherAction").hide('swol');

            
        }
        else if(role=="Teacher"){
            // $("#StudentAction").slideUp(2000);
            $("#TeacherAction").show(2000);
            // $("#TeacherAction").slideDown(2000);
            $("#StudentAction").hide(2000).slideUp("slow");
        }
    });
}); 

    
