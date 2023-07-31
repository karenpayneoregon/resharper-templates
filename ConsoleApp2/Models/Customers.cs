#pragma warning disable CS8618

namespace ConsoleApp1.Models;
public class Customers
{
    public int Id { get; set; }
    public string Company { get; set; }
    public string Title { get; set; }
    public string Contact { get; set; }
    public string Country { get; set; }
    public string Phone { get; set; }
    public DateTime Modified { get; set; }
}
