$(function () {

    var neYapayim = function (e) {
        e.preventDefault();

        // formun içindeki datayı toplayalım
        var formData = $(this).serializeArray();

        // json'a çevirelim
        var jsObj = objectifyForm(formData);
        
        // ajax ile post atalım

        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: "AddVilla.aspx/SaveVilla",
            data: "{villa: " + JSON.stringify(jsObj) + "}",
            success: function (response) {
                alert("Kaydettim");
            },
            error: function () {
                alert("Bir hata oldu");
            }
        });
    }

    function objectifyForm(formArray) {//serialize data function
        var returnArray = {};
        for (var i = 0; i < formArray.length; i++) {
            returnArray[formArray[i]['name']] = formArray[i]['value'];
        }
        return returnArray;
    }

    $("#addVillaForm").submit(neYapayim);

});