using System.Runtime.CompilerServices;
using Microsoft.Extensions.Configuration;
using W = ConsoleHelperLibrary.Classes.WindowUtility;
namespace ConsoleApp1;
internal partial class Program
{
    [ModuleInitializer]
    public static void Setup()
    {
        W.SetConsoleWindowPosition(W.AnchorWindow.Center);
        Console.Title = "ReSharper SourceTemplate Code sample";
        _configuration = new ConfigurationBuilder()
            .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
            .AddEnvironmentVariables()
            .Build();
    }

    private static void ExitPrompt()
    {
        Console.WriteLine("Ready to exits");
        Console.ReadLine();
    }
}
