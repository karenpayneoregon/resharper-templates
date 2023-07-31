namespace CommonTemplateLibrary.LanguageExtensions.Helpers;
public static class TimeOnlyExtensions
{
    public static void Deconstruct(this TimeOnly time, out int hour, out int minutes, out int seconds, out int milliseconds)
        => (hour, minutes, seconds, milliseconds) = 
            (time.Hour, time.Minute, time.Second, time.Microsecond);
}
