using JetBrains.Annotations;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using SourceTemplatesLibrary.LanguageExtensions.Helpers;

namespace SourceTemplatesLibrary.LanguageExtensions;
public static class SqlClientTemplates
{
    [SourceTemplate]
    public static void create(this SqlConnection sender, IConfiguration _configuration)
    {
        var connectionString = _configuration.GetValue<string>("ConnectionStrings:ApplicationConnection");
        using SqlConnection cn = new(connectionString);
        using SqlCommand cmd = new("statement", cn);
        try
        {
            cn.Open();
            //$ $END$
        }
        catch (Exception exception)
        {
            Console.WriteLine(exception.Message);
        }
    }

    [SourceTemplate]
    public static void reader(this SqlCommand cmd)
    {
        SqlDataReader? reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            //$ $END$
        }
    }

    [SourceTemplate]
    [Macro(Target = "dto")]
    public static void gdo(this SqlDataReader reader, int index)
    {
        var dto = reader.GetDateOnly(index); 
    }
    [SourceTemplate]
    
    public static void gdo1(this SqlDataReader reader, int index)
    {
        var (day, month, year) = reader.GetDateOnly(index);
    }
}
