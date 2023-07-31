using System.Text.Json;
using CommonTemplateLibrary.LanguageExtensions.Helpers;
using ConsoleApp1.Models;

namespace ConsoleApp2;

internal class Program
{
    static void Main(string[] args)
    {

        TestDeserializing();
        Console.ReadLine();
    }

    /// <summary>
    /// typeof(Customers).deserialize
    /// </summary>
    private static void TestDeserializing()
    {
        var fileName = "Customers.json";
    }
}
