using CommonTemplateLibrary.LanguageExtensions.Helpers;
using JetBrains.Annotations;

// ReSharper disable InconsistentNaming

namespace CommonTemplateLibrary.LanguageExtensions;
public static class CommonTemplates
{
    [SourceTemplate]
    public static void ds(this DateOnly sender)
    {
        var (day, month, year) = sender;
    }

    [SourceTemplate]
    public static void ds(this TimeOnly sender)
    {
        var (hour, minutes, seconds, milliseconds) = sender;
    }

    [SourceTemplate]
    public static void ds(this DateTime sender)
    {
        var (day, month, year) = sender;
    }

    [SourceTemplate]
    public static void weekday(this DateTime sender)
    {
        if (sender.IsWeekDay())
        {
            //$ $END$
        }
    }

    [SourceTemplate]
    public static void tuple(this Version sender)
    {
        var (major, minor, build, revision) = sender;
    }

    
    [SourceTemplate]
    [Macro(Target = "T")]
    [Macro(Target = "varName")]
    public static void checker<T>(this string sender, T type) where T : struct
    {
        if (Enum.TryParse(sender, true, out T varName))
        {
            
        }
    }
    
}
