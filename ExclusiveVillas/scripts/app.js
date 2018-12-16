$(document).ready(function () {
    // make an httprequest to server method and get the response.
    $.ajax({
        type: "GET",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: "/Default.aspx/GetAllVillas",
        data: "",
        success: function (response) {
            var arrayOfVillas = response.d;

            for (var i = 0; i < arrayOfVillas.length; i++) {
                let currentItem = arrayOfVillas[i];

                var row = "<tr><td>" +
                    currentItem.Id + "</td><td>" +
                    currentItem.Name + "</td><td>" +
                    currentItem.Address + "</td><td>" +
                    currentItem.WeeklyPrice + "</td></tr>";

                $("#villaListing tbody").append(row);
            }

            for (var i = 0; i < arrayOfVillas.length; i++) {
                let currentItem = arrayOfVillas[i];

                var isActive = i == 0 ? "active" : "";

                var template = "<div class='carousel-item " + isActive + "'><img class='d-block w-100' src='images/" + currentItem.ImageName + "' /></div >";

                console.log(template);

                $("#resimler").append(template);
            }

            $('.carousel').carousel()
        }
    });
});