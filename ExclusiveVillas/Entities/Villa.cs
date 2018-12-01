namespace ExclusiveVillas.Entities
{
    /// <summary>
    /// Villa entity 
    /// </summary>
    public class Villa
    {
        // short-hand definition of a property 
        public int Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public decimal WeeklyPrice { get; set; }
    }
}
