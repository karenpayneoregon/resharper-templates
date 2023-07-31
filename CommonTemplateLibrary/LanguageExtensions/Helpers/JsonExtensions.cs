using JetBrains.Annotations;
using System.Text.Json;

// ReSharper disable InconsistentNaming

namespace CommonTemplateLibrary.LanguageExtensions.Helpers;
public static class JsonExtensions
{
    /// <summary>
    /// Deserialize file
    /// </summary>
    /// <typeparam name="T">Type</typeparam>
    /// <param name="sender"></param>
    /// <param name="fileName">File name or variable for file name</param>
    [SourceTemplate]
    [Macro(Target = "T")]
    [Macro(Target = "list")]
    [Macro(Target = "fileName")]
    public static void deserialize<T>(this T sender, string fileName)
    {
        List<T> list =
            JsonSerializer.Deserialize<List<T>>(
                File.ReadAllText(fileName))!;
    }
}
