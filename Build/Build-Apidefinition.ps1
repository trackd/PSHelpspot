# Load the PowerHTML module
Import-Module PowerHTML

# Make HTTP requests to the website and parse the HTML
$privateUrl = 'https://support.helpspot.com/index.php?pg=kb.page&id=164'
$publicUrl = 'https://support.helpspot.com/index.php?pg=kb.page&id=163'
$web = [HtmlAgilityPack.HtmlWeb]::new()
$privateDoc = $web.Load($privateUrl)
$publicDoc = $web.Load($publicUrl)

$ApiDefinition = @{}
foreach ($doc in @($privateDoc, $publicDoc)) {
    $tables = $doc.DocumentNode.SelectNodes('//tbody')
    foreach ($table in $tables) {
        $endpoint = $table.SelectSingleNode('.//h2').InnerText
        $description = $table.SelectSingleNode('.//tr[2]/td[1]').InnerText
        $url = $table.SelectSingleNode('.//tr/td[2]').InnerText
        $method = $table.SelectSingleNode('.//strong').InnerText
        $parameters = $table.SelectNodes('.//ul[@class="bulleted"]/li')
        $paramLookup = @{}
        foreach ($param in $parameters) {
            $Name = ($param.InnerText -split ' ')[0].trim()
            $paramLookup[$Name] = @{
                Name     = $Name
                Required = $param.InnerText.Contains('Required')
            }
        }
        $ApiDefinition[$endpoint] = @{
            Endpoint    = $endpoint
            Description = $description.Trim()
            Url         = $url
            Method      = $Method
            Parameters  = $paramLookup
        }
    }
}
$ApiDefinition | Export-Metadata -Path "$PSScriptRoot\apidef.psd1" -AsHashtable
