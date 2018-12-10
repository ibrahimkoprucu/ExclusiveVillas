<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="ExclusiveVillas.ReservationPage" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Reservasyon Formu</title>

    <script src="scripts/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <link href="styles/bootstrap.css" rel="stylesheet" />
    <script src="scripts/reservation.js"></script>
</head>
<body>

    <div class="container">

        <pre id="sonuc"></pre>

        <form class="form-horizontal" id="reservationForm">
            <fieldset>

                <!-- Form Name -->
                <legend>Reservasyon Formu</legend>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="name">Adınız Soyadınız</label>
                    <div class="col-md-4">
                        <input id="name" name="Name" type="text" placeholder="Adınız Soyadınız" class="form-control input-md" required="">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="checkoutDate">Çıkış Tarihi</label>
                    <div class="col-md-4">
                        <input id="checkoutDate" name="checkoutDate" type="date" class="form-control input-md" required="">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="checkinDate">Giriş Tarihi</label>
                    <div class="col-md-4">
                        <input id="checkinDate" name="checkinDate" type="date" class="form-control input-md" required="">
                    </div>
                </div>

                <!-- Multiple Checkboxes -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="isHoneyMoon">Balayı mı?</label>
                    <div class="col-md-4">
                        <div class="checkbox">
                            <label for="isHoneyMoon-0">
                                <input type="checkbox" name="isHoneyMoon" id="isHoneyMoon-0" value="1">
                                Evet
                            </label>
                        </div>
                    </div>
                </div>

                <!-- Select Basic -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="count">Kişi Sayısı</label>
                    <div class="col-md-4">
                        <select id="count" name="count" class="form-control">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                        </select>
                    </div>
                </div>

                <!-- Button -->
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