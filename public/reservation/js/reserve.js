$(document).ready(function () {



    // var form = new formData();
    // var reservationData;

    formHandler();

    





});


function confirmDetails(id) {

    
    // $.ajaxSetup({
    //     headers: {
    //         'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
    //     }
    // });


    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            
            var data = JSON.parse(this.responseText);
            
            console.log(data['trip'][0]);
            displayResult(data);
            
            
            //  CallDetails(data);
            // document.getElementById("demo").innerHTML = myArr;
            // console.log(this.responseText);
        }
    };
    xmlhttp.open("GET", '/reservationdetails/' + id, true);
    xmlhttp.send();

    

    // jQuery.ajax({
    //     url: '/reservationdetails/'+id,  
    //     method: 'get',

    //     success: function (result) {

    //         data =JSON.parse(result) ;            
    //         console.log(data);
    //     }
    // });





}

function formHandler() {
    var id = $("#trip_id").val();
    $("#next1").click(function () {



        var adults = $("#cost0").text();
        var childs = $("#cost1").text();
        var senior = $("#cost2").text();

        var package = parseInt(adults) + "xadult" + parseInt(childs) + "xchild" + parseInt(senior) + "xsenior";

        if (adults !== 0 && childs != 0 && senior != 0) {
            $(".package").html(
                parseInt(adults) + " X Adults(15+)" +
                "<br>" + parseInt(childs) + " X Childs(4-14)" +
                "<br>" + parseInt(senior) + " X Seniors(57+)");
        }



        var id = $("#trip_id").val();
        confirmDetails(parseInt(id));

        // var id = $("#trip_id").val();
        // if (id !== null) {
        //     var reservationData = confirmDetails(parseInt(id));

        //     console.log(reservationData);
        //     var trip_data = reservationData['trip'][0];
        //     var pricing_data = reservationData['pricing'][0];

        //     console.log(trip_data);
        //     console.log(pricing_data);
        // }





        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content'),
                'Content-Type': 'application/json'
            }
        });


        // form.append('adults', parseInt($("#cost0").text()));
        // form.append('childs', parseInt($("#cost1").text()));
        // form.append('senior', parseInt($("#cost2").text()));

        // form.append('package', package);

        jQuery.ajax({
            url: '/confirm/' + id,
            method: 'post',
            data: {
                'adults': parseInt($("#cost0").text()),
                'childs': parseInt($("#cost1").text()),
                'senior': parseInt($("#cost2").text()),
                'package': package
            },
            processData: false,
            contentType: false,
            success: function (result) {
                console.log(result);
            }
        });

    });


}


function displayResult(data){
    var id = $("#trip_id").val();
    if (id !== null) {
        // var reservationData = confirmDetails(parseInt(id));

        console.log(data);
        var trip_data = data['trip'][0];
        var pricing_data = data['pricing'][0];

        console.log(trip_data);
        console.log(pricing_data);
    }

}


// function fetchData(data) {

//     return data;
// }