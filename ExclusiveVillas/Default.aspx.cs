using System;
using System.Web.Services;
using Dapper;
using System.Data.SqlClient;
using ExclusiveVillas.Entities;
using System.Linq;
using System.Collections.Generic;

namespace ExclusiveVillas
{
    public partial class Default : System.Web.UI.Page
    {
        // database giden bağlantı yolu. (bulunduğu sunucunun ipsi ve db adı vb.. bulunur.)
        private const string connectionStr = "Data Source=DESKTOP-KH8I08O\\SQLEXPRESS;Initial Catalog=ExclusiveVillas;Integrated Security=True";

        [WebMethod]
        public static List<Villa> GetAllVillas()
        {
            string villaSelectSql = "SELECT [Id], [Name], [Address], [WeeklyPrice] FROM [ExclusiveVillas].[dbo].[Villas]";
            var connection = new SqlConnection(connectionStr);

            // get all villas 
            List<Villa> villas = connection.Query<Villa>(villaSelectSql).ToList() ;
            return villas;
        }
    }
}