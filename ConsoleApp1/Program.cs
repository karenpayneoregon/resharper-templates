using System.Collections;
using System.Text.Json;
using ConsoleApp1.Classes;
using ConsoleApp1.Models;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using SourceTemplatesLibrary.LanguageExtensions.Helpers;
#pragma warning disable CS0219

namespace ConsoleApp1;

internal partial class Program
{
    private static IConfiguration? _configuration;
    static void Main(string[] args)
    {
        EnumTry();
        ExitPrompt();
    }

    private static List<DateTime> DateTimesList()
        => Enumerable.Range(1, 7)
            .Select(day => new DateTime(2023, 7, day))
            .ToList();

    static DateOnly BirthDate() 
        => new(2022, 9, 2);

    static TimeOnly StartTime() 
        => new(13, 15, 0);

    static void SqlClientExample()
    {
        var statement = "SELECT CountryId, [Name] FROM dbo.Countries;";

        var connectionString = _configuration.GetValue<string>("ConnectionStrings:ApplicationConnection");
        using SqlConnection cn = new(connectionString);
        using SqlCommand cmd = new(statement, cn);
        try
        {
            cn.Open();
            SqlDataReader? reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine($"{reader.GetInt32(0),-3}{reader.GetString(1)}");
            }
        }
        catch (Exception exception)
        {
            Console.WriteLine(exception.Message);
        }
    }

    static void IterateJson()
    {
        List<Customers> customersList =
            JsonSerializer.Deserialize<List<Customers>>(
                File.ReadAllText("Customers.json"));

    }

    static void EnumTry()
    {
        var value = "one";

        if (Enum.TryParse(value, true, out DemoEnum result))
        {

        }
    }
}