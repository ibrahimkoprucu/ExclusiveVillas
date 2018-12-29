<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddVilla.aspx.cs" Inherits="ExclusiveVillas.AddVilla" MasterPageFile="~/ExclusiveVillas.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Villa Ekle</title>

  <style>
    .nav-link.add {
      color: #eaeaea !important;
    }
  </style>

  <script src="scripts/addvilla.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h1>Villa Ekle</h1>

  <form class="form-horizontal" id="addVillaForm">
    <fieldset>

      <div class="form-group">
        <label class="col-md-4 control-label" for="name">Villa Adı</label>
        <div class="col-md-4">
          <input id="name" name="Name" type="text" placeholder="Villa Adı" class="form-control input-md" required="" />
        </div>
      </div>

      <div class="form-group">
        <label class="col-md-4 control-label" for="address">Adres</label>
        <div class="col-md-4">
          <textarea class="form-control" id="address" name="Address"></textarea>
        </div>
      </div>

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
</asp:Content>
