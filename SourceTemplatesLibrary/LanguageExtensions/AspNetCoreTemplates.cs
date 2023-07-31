using JetBrains.Annotations;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using SourceTemplatesLibrary.Classes;

namespace SourceTemplatesLibrary.LanguageExtensions;
/// <summary>
/// 
/// </summary>
/// <remarks>
/// All connection strings assume ApplicationConnections
/// </remarks>
public static class AspNetCoreTemplates
{
    [SourceTemplate]
    public static void connectstring(this WebApplicationBuilder builder)
    {
        var connectionString = builder.Configuration.GetConnectionString("ApplicationConnection");
    }

    [SourceTemplate]
    public static void connectionpool(this WebApplicationBuilder builder)
    {
        builder.Services.AddDbContextPool<Context>(options =>
            options.UseSqlServer(
                builder.Configuration.GetConnectionString("ApplicationConnection")));
    }

    [SourceTemplate]
    public static void connection(this WebApplicationBuilder builder)
    {
        builder.Services.AddDbContext<Context>(options =>
            options.UseSqlServer(
                builder.Configuration
                    .GetConnectionString("ApplicationConnection")));
    }
}