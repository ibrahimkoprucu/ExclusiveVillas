// Dapper database'e erişim işlerimizi kolaylaştıran bir c# kütüphanesidir.
// https://github.com/StackExchange/Dapper
using Dapper;
using System.Data.SqlClient;
using System.Web.Services;

namespace ExclusiveVillas
{
    public partial class ReservationPage : System.Web.UI.Page
    {
        // database giden bağlantı yolu. (bulunduğu sunucunun ipsi ve db adı vb.. bulunur.)
        private const string connectionStr = "Data Source=ERTAN;Initial Catalog=ExclusiveVillas;Integrated Security=True";

        [WebMethod]
        public static bool SaveCustomerReservations(Reservation reservation)
        {
            string isHoneyMoon = reservation.IsHoneyMoon == null ? "0" : reservation.IsHoneyMoon;

            string reservationInsertSql = $@"INSERT INTO Reservations
(Name, CheckinDate, CheckoutDate, IsHoneyMoon, Count)
VALUES ('{reservation.Name}', '{reservation.CheckinDate}',
'{reservation.CheckoutDate}', {isHoneyMoon}, {reservation.Count});";

            // database e bağlanmayı sağlayan SqlConnection sınıfının bir örneği alınır.
            var connection = new SqlConnection(connectionStr);

            // insert, update, delete işleri için dapper'ın execute metodunu kullanırız
            int rowsAffected = connection.Execute(reservationInsertSql);

            return rowsAffected == 1;
        }
    }
}