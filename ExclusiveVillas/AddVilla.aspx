<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVilla.aspx.cs" Inherits="ExclusiveVillas.AddVilla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Villa Ekle</title>
    <script src="scripts/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <link href="styles/bootstrap.css" rel="stylesheet" />
    <script src="scripts/addvilla.js"></script>
</head>
<body>

    <div class="container">
        <form class="form-horizontal" id="addVillaForm">
            <fieldset>

                <!-- Form Name -->
                <legend>Villa Ekle</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="name">Villa Adı</label>
                    <div class="col-md-4">
                        <input id="name" name="Name" type="text" placeholder="Villa Adı" class="form-control input-md" required="" />
                    </div>
                </div>

                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="address">Adres</label>
                    <div class="col-md-4">
                        <textarea class="form-control" id="address" name="Address"></textarea>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="weeklyPrice">Haftalık Ücret</label>
                    <div class="col-md-4">
                        <input id="weeklyPrice" name="WeeklyPrice" type="number" class="form-control input-md" required="" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="save"></label>
                    <div class="col-md-4">
                        <input type="submit" name="g" value="Kaydet" id="g" class="btn btn-primary" />
                    </div>
                </div>

            </fieldset>
        </form>
    </div>





</body>
</html>
