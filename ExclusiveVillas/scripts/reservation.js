$(document).ready(function () {
    var neYapmali = function (e) {
        e.preventDefault();

        var formDataAsJson = $(this).serializeArray();

        // Converts a JavaScript value to a JavaScript Object Notation (JSON) string.
        $("#sonuc").text(JSON.stringify(formDataAsJson, ' ', 4));

        console.log(formDataAsJson);

        var reservationData = objectifyForm(formDataAsJson);

        console.log(reservationData);

        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "ReservationPage.aspx/SaveCustomerReservations",
            data: "{reservation: " + JSON.stringify(reservationData) + "}",
            success: function (response) {
                alert("Kaydettim");
            },
            error: function () {
                alert("Bir hata oldu");
            }
        });
    };

    // reservationForm id'li formun submit eventine karşılık çalıştırılacak
    $("#reservationForm").submit(neYapmali);

    function objectifyForm(formArray) {//serialize data function
        var returnArray = {};
        for (var i = 0; i < formArray.length; i++) {
            returnArray[formArray[i]['name']] = formArray[i]['value'];
        }
        return returnArray;
    }
});