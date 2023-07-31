using JetBrains.Annotations;
using System.Text.Json;

// ReSharper disable InconsistentNaming

namespace CommonTemplateLibrary.LanguageExtensions.Helpers;
public static class JsonExtensions
{
    [SourceTemplate]
    [Macro(Target = "T")]
    [Macro(Target = "fileName")]
    public static void deserialize<T>(this T sender, string fileName)
    {
        List<T> customersList =
            JsonSerializer.Deserialize<List<T>>(
                File.ReadAllText(fileName))!;
    }
}
