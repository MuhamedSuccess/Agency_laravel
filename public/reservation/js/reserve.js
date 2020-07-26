$(document).ready(function () {


    sendReservationData();
    formHandler();


});

var ReservationData = {

    adults: 0,
    childs: 0,
    senior: 0,
    cost: 0,
    package: "",
    trip_id: 0,


};

function confirmDetails(id, response) {


    console.log(response);


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

function sendReservationData() {

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


        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });


        $.ajax({
            url: '/send-reservation/' + id, //trip id
            type: 'POST',
            dataType: 'json',
            data: {

                'adults': parseInt($("#cost0").text()),
                'childs': parseInt($("#cost1").text()),
                'senior': parseInt($("#cost2").text()),
                // 'package':
                // 'package': parseInt(adults) + "xadult+" + parseInt(childs) + "xchild+" + parseInt(senior) + "xsenior"
            },

            success: function (result) {
                var data = result;
                var id = $("#trip_id").val();

                displayResult(data);


                ReservationData.adults = parseInt(adults);
                ReservationData.childs = parseInt(childs);
                ReservationData.senior = parseInt(senior);
                ReservationData.cost = data['cost'];
                ReservationData.trip_id = parseInt(id);
                ReservationData.package = package;
                console.log(ReservationData);

                // confirmDetails(parseInt(id), data);


                console.log(result);


            }
        });

    });


}

//save reservation data in database
function formHandler() {
    var id = $("#trip_id").val();

    $("#send2").click(function () {



        $.ajax({
            url: '/confirm/' + id, //trip id
            type: 'POST',
            dataType: 'json',
            data: {

                'adults': ReservationData.adults,
                'childs': ReservationData.childs,
                'senior': ReservationData.senior,

                // 'package':
                // 'package': parseInt(adults) + "xadult+" + parseInt(childs) + "xchild+" + parseInt(senior) + "xsenior"
            },

            success: function (result) {
                // var data = result;
                // var id = $("#trip_id").val();
                // confirmDetails(parseInt(id), data);
                console.log(result);


            },
            error: function(err){
                console.log(err);
            }
        });

    });


}


function displayResult(data) {
    var id = $("#trip_id").val();


    console.log(data);
    var trip_data = data['trip'][0];
    // var pricing_data = data['pricing'][0];
    $(".css-1vsmjje").html("EGP&nbsp;" + data['cost']);
    if (data['cost']) {

        $(".css-1vsmjje").html("EGP&nbsp;" + data['cost']);
    }

    console.log(trip_data);
    // console.log(pricing_data);


}

function displayConfirmation() {
    // getReservation

    $.ajax({
        url: '/confirm/' + id,
        type: 'POST',
        dataType: 'json',
        data: {

            'adults': parseInt($("#cost0").text()),
            'childs': parseInt($("#cost1").text()),
            'senior': parseInt($("#cost2").text()),
            // 'package':
            // 'package': parseInt(adults) + "xadult+" + parseInt(childs) + "xchild+" + parseInt(senior) + "xsenior"
        },

        success: function (result) {
            var data = result;
            var id = $("#trip_id").val();
            confirmDetails(parseInt(id), data);
            console.log(result);


        }
    });
}

// function fetchData(data) {

//     return data;
// }
