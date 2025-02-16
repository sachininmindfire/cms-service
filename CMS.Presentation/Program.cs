using CMS.Infrastructure.Configurations;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Azure.Identity;

var builder = WebApplication.CreateBuilder(args);

if (builder.Environment.EnvironmentName == "Production")
{
    // Add Azure Key Vault
    var keyVaultEndpoint = new Uri(builder.Configuration["KeyVault:Endpoint"]);
    builder.Configuration.AddAzureKeyVault(keyVaultEndpoint, new DefaultAzureCredential());
}

builder.Configuration
    .SetBasePath(Directory.GetCurrentDirectory())
    .AddJsonFile("appsettings.Production.json", optional: false, reloadOnChange: true)
    .AddJsonFile($"appsettings.{builder.Environment.EnvironmentName}.json", optional: true, reloadOnChange: true)
    .AddEnvironmentVariables();


// Add CORS policy
builder.Services.AddCors(options =>
{
    options.AddPolicy("AllowAngularApp",
        builder =>
        {
            builder.WithOrigins("http://localhost:4200")
                   .AllowAnyHeader()
                   .AllowAnyMethod();
        });
});

builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
    .AddJwtBearer(options =>
    {
        options.TokenValidationParameters = new TokenValidationParameters
        {
            ValidateIssuer = true,
            ValidateAudience = true,
            ValidateLifetime = true,
            ValidateIssuerSigningKey = true,
            ValidIssuer = "CMS.Auth",
            ValidAudience = "CMS.Service",
            IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("ThisIsMyAndMyFriendAlsoYourSecretKeyDoWeNeedMoreLetters"))
        };
    });

// Add services to the container.
builder.Services.AddControllersWithViews();

var dbServer = builder.Configuration["CMS-DbServer"];
var dbName = builder.Configuration["CMS-DbName"];
var dbUsername = builder.Configuration["CMS-DbUserName"];
var dbPassword = builder.Configuration["CMS-DbPassword"];


var connectionString = builder.Configuration.GetConnectionString("DefaultConnection")
    .Replace("{CMS-DbServer}", dbServer)
    .Replace("{CMS-DbName}", dbName)
    .Replace("{CMS-DbUserName}", dbUsername)
    .Replace("{CMS-DbPassword}", dbPassword);


Console.WriteLine($"connectionstring values for {builder.Environment.EnvironmentName}:");
Console.WriteLine($"connectionString: {connectionString}");

// Configure DbContext
builder.Services.AddDbContext<CMSDbContext>(options =>
    options.UseSqlServer(connectionString));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseCors("AllowAngularApp");
app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();