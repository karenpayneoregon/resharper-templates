using JetBrains.Annotations;
using Microsoft.EntityFrameworkCore;

namespace SourceTemplatesLibrary.LanguageExtensions;
public static class EntityFrameworkCoreTemplates
{
    /// <summary>
    /// useful when first developing an application to
    /// create and recreate the database.
    /// </summary>
    /// <param name="dbContext"></param>
    [SourceTemplate]
    public static void create(this DbContext dbContext)
    {
        dbContext.Database.EnsureDeleted();
        dbContext.Database.EnsureCreated();
    }
}
