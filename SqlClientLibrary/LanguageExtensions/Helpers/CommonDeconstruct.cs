namespace SqlClientLibrary.LanguageExtensions.Helpers;
public static class CommonDeconstruct
{
    public static void Deconstruct(this DateOnly date, out int day, out int month, out int year) =>
        (day, month, year) = (date.Day, date.Month, date.Year);

    public static void Deconstruct(this DateTime date, out int day, out int month, out int year) =>
        (day, month, year) = (date.Day, date.Month, date.Year);
}
