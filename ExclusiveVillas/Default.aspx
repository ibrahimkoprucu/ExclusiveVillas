﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExclusiveVillas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Exclusive Villas</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <h1>Exclusive Villas </h1>
        
        <p>New Villas</p>
        <table class="table table-bordered" id="villaListing">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Adı</th>
                    <th>Adresi</th>
                    <th>Haftalık Fiyat</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>


    <script>    
        // make an httprequest to server method and get the response.


        // javascript kütüphanesi olan jQuery
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "/Default.aspx/GetAllVillas",
            data: "{age:34}",
            success: function (response) {


                /*
{
  "d": [
    {
      "__type": "ExclusiveVillas.Entities.Villa",
      "Id": 1,
      "Name": "Villa Bodamya",
      "Address": "Pınarbaşı Mevkii No:66 İslamlar/Kaş",
      "WeeklyPrice": 6000
    },
    {
      "__type": "ExclusiveVillas.Entities.Villa",
      "Id": 2,
      "Name": "Villa Panaroma",
      "Address": "Kısık Mevkii No:55 İslamlar/Kaş",
      "WeeklyPrice": 7000
    }
  ]
}                 
                 */

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
            }
        });
    </script>

</body>
</html>

