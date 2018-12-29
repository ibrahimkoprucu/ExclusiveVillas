<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ExclusiveVillas.Default" MasterPageFile="~/ExclusiveVillas.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Exclusive Villas</title>

  <style>
    .nav-link.default {
      color: #eaeaea !important;
    }
  </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h1>Yeni Villalarımız</h1>

  <div class="row h-50">
    <div class="col-sm-12 h-100 d-table">
      <div class="card card-block d-table-cell align-middle">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" id="resimler">
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </div>

  <hr />

  <div class="row">
    <table class="table table-bordered table-hover" id="villaListing">
      <thead class="thead-light">
        <tr>
          <th>#</th>
          <th>Adı</th>
          <th>Adresi</th>
          <th>Haftalık Fiyat</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
  </div>

</asp:Content>
