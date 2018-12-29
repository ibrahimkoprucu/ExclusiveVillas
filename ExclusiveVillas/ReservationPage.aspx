<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationPage.aspx.cs" Inherits="ExclusiveVillas.ReservationPage" MasterPageFile="~/ExclusiveVillas.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Reservasyon Formu</title>

  <style>
    .nav-link.reservation {
      color: #eaeaea !important;
    }
  </style>

  <script src="scripts/reservation.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <h1>Reservasyon Formu</h1>
  <pre id="sonuc" class="hide"></pre>

  <form class="form-horizontal" id="reservationForm">
    <fieldset>

      <div class="form-group">
        <label class="col-md-4 control-label" for="name">Adınız Soyadınız</label>
        <div class="col-md-4">
          <input id="name" name="Name" type="text" placeholder="Adınız Soyadınız" class="form-control input-md" required="">
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="checkoutDate">Çıkış Tarihi</label>
        <div class="col-md-4">
          <input id="checkoutDate" name="checkoutDate" type="date" class="form-control input-md" required="">
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="checkinDate">Giriş Tarihi</label>
        <div class="col-md-4">
          <input id="checkinDate" name="checkinDate" type="date" class="form-control input-md" required="">
        </div>
      </div>

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

      <div class="form-group">
        <label class="col-md-4 control-label" for="save"></label>
        <div class="col-md-4">
          <input type="submit" name="g" value="Kaydet" id="g" class="btn btn-primary" />
        </div>
      </div>
    </fieldset>
  </form>

</asp:Content>
