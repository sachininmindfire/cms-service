# PowerShell script to generate C# model classes from SQL script

# Path to the SQL script file
$sqlFilePath = "./Techopedia.sql"

# Path to the Entities folder
$entitiesFolderPath = "CMS.Core/Entities"

# Read the SQL script file
$sqlScript = Get-Content -Path $sqlFilePath -Raw

# Extract table names and columns
$tablePattern = "CREATE TABLE \[dbo\]\.\[(\w+)\] \((.*?)\);"
$columnPattern = "\[(\w+)\] (\w+)(?:\((\d+)\))?"

# Create Entities folder if it doesn't exist
if (-Not (Test-Path -Path $entitiesFolderPath)) {
    New-Item -ItemType Directory -Path $entitiesFolderPath
}

# Match tables
$tableMatches = [regex]::Matches($sqlScript, $tablePattern, [System.Text.RegularExpressions.RegexOptions]::Singleline)

foreach ($tableMatch in $tableMatches) {
    $tableName = $tableMatch.Groups[1].Value
    $columns = $tableMatch.Groups[2].Value

    # Generate C# class
    $className = $tableName.TrimEnd('s') # Simple plural to singular conversion
    $classContent = "namespace CMS.Core.Entities
{
    public class $className
    {
"

    # Match columns
    $columnMatches = [regex]::Matches($columns, $columnPattern)

    foreach ($columnMatch in $columnMatches) {
        $columnName = $columnMatch.Groups[1].Value
        $columnType = $columnMatch.Groups[2].Value

        # Map SQL types to C# types
        switch ($columnType) {
            "int" { $csharpType = "int" }
            "bigint" { $csharpType = "long" }
            "uniqueidentifier" { $csharpType = "Guid" }
            "nvarchar" { $csharpType = "string" }
            "varchar" { $csharpType = "string" }
            "datetime" { $csharpType = "DateTime" }
            "bit" { $csharpType = "bool" }
            "decimal" { $csharpType = "decimal" }
            "varbinary" { $csharpType = "byte[]" }
            default { $csharpType = "string" } # Default to string for unknown types
        }

        $classContent += "        public $csharpType $columnName { get; set; }
"
    }

    $classContent += "    }
}
"

    # Write the class to a file
    $classFilePath = Join-Path -Path $entitiesFolderPath -ChildPath "$className.cs"
    Set-Content -Path $classFilePath -Value $classContent
}
