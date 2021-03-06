﻿using Dapper;
using ExclusiveVillas.Entities;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Script.Services;
using System.Web.Services;

namespace ExclusiveVillas
{
  public partial class Default : System.Web.UI.Page
  {
    /// <summary>
    /// Tüm villaları dönen Web Service metodu
    /// </summary>
    [WebMethod]
    [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
    public static List<Villa> GetAllVillas()
    {
      // database de çalıştırmak üzere sql sorgumuz.
      // tüm vilları image detayı ile sorgular.
      string villaSelectSql = @"
                        SELECT v.Id, v.Name, v.Address, v.WeeklyPrice, i.ImageName, i.AlternativeText
                        FROM Villas AS v left JOIN Images AS i ON v.Id = i.VillaId";

      // database giden bağlantı yolu. (bulunduğu sunucunun ipsi ve db adı vb.. bulunur.)
      string connectionStr = ConfigurationManager.ConnectionStrings["ExclusiveVillasConnectionString"].ConnectionString;

      // database e bağlanmayı sağlayan SqlConnection sınıfının bir örneği alınır.
      var connection = new SqlConnection(connectionStr);

      // sorguyu çalıştır ve bir villa dizisine doldur.
      List<Villa> villas = connection.Query<Villa>(villaSelectSql).ToList();
      return villas;
    }
  }
}