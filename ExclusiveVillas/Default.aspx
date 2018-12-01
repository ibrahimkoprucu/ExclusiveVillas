<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExclusiveVillas.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Exclusive Villas</title>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
</head>
<body>
    <h1>Exclusive Villas </h1>
    <p>New Villas </p>

    <script>    
        // make an httprequest to server method and get the response.

        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "/Default.aspx/GetAllVillas",
            data: "{}",
            success: function (response) {
                console.log(response.d);
            }
        });
    </script>

</body>
</html>

