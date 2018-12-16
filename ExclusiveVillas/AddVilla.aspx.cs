using Dapper;
using ExclusiveVillas.Entities;
using System.Data.SqlClient;
using System.Web.Services;

namespace ExclusiveVillas
{
    public partial class AddVilla : System.Web.UI.Page
    {
        // database giden bağlantı yolu. (bulunduğu sunucunun ipsi ve db adı vb.. bulunur.)
        private const string connectionStr = "Data Source=ERTAN;Initial Catalog=ExclusiveVillas;Integrated Security=True";

        [WebMethod]
        public static bool SaveVilla(Villa villa)
        {
            string villaInsertSql = $@"
INSERT 
INTO              ExclusiveVillas.dbo.Villas(Name, Address, WeeklyPrice)
VALUES        (N'{villa.Name}', N'{villa.Address}', {villa.WeeklyPrice})";

            // database e bağlanmayı sağlayan SqlConnection sınıfının bir örneği alınır.
            var connection = new SqlConnection(connectionStr);

            // insert, update, delete işleri için dapper'ın execute metodunu kullanırız
            int rowsAffected = connection.Execute(villaInsertSql);

            return rowsAffected == 1;
        }
    }
}