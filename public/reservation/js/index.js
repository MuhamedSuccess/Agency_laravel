
$(document).ready(function(){


   
    // var i;
    
    //  for(i =0; i<3; i++){

    //     $("#add"+i).click(function(){
    //         var old = parseInt($("#cost"+i).text());
    //         $("#cost"+i).text(old+1);
            
    //     });

    //     $("#rm"+i).click(function(){
    //         var old = parseInt($("#cost"+i).text());

    //         if(old > 0){
    //             $("#cost"+i).text(old-1);
    //         }
            
    //     });
    

    //  }


     $("#add0").click(function(){
        var old = parseInt($("#cost0").text());
        $("#cost0").text(old+1);
        
    });

     $("#add1").click(function(){
        var old = parseInt($("#cost1").text());
        $("#cost1").text(old+1);
        
    });

     $("#add2").click(function(){
        var old = parseInt($("#cost2").text());
        $("#cost2").text(old+1);
        
    });



    $("#rm0").click(function(){
        var old = parseInt($("#cost0").text());
        $("#cost0").text(old-1);
        
    });


    $("#rm1").click(function(){
        var old = parseInt($("#cost1").text());
        $("#cost1").text(old-1);
        
    });

   
    $("#rm2").click(function(){
        var old = parseInt($("#cost2").text());
        $("#cost2").text(old-1);
        
    });

               
    
        // $("[data-testid=rm-ticket]").click(function(){


        //     // var tickets =   document.getElementsByClassName("css-1gfl9a5").innerHTML;
            
        //     var input = $("[data-testid=rm-ticket]").closest("div").find(".css-1gfl9a5")[0].innerHTML;
        
        //     // var tickets_no = $(this).closest("div").find(".css-1gfl9a5")[0].innerHTML;
        //     // var tickets = parseInt(tickets_no);



        //     if(tickets <= 0 )
        //     {
        //         $("[data-testid=rm-ticket]").disable();
        //     }else{
        //         var tickets = parseInt(input);
            
        //     $("[data-testid=rm-ticket]").closest("div").find(".css-1gfl9a5")[0].innerHTML = tickets - 1;

        //     }

        //     // $("#ticket_no").val(tickets  - 1 );
            
        // });
    

    

});