using Microsoft.EntityFrameworkCore;

namespace SourceTemplatesLibrary.Classes;

/// <summary>
/// Stub for several EF Core/Razor Pages and ASP.NET Core SourceTemplate
/// </summary>
internal class Context : DbContext
{
}

/// <summary>
/// We can have multiple stub DbContext
/// </summary>
internal class NorthWindContext : DbContext
{
}