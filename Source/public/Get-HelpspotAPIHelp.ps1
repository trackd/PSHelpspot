function Get-HelpspotAPIHelp {
    [CmdletBinding()]
    param (
        [String]
        $ApiEndpoint
    )
    process {
        try {
            if ($ApiEndpoint) {
                $helper = [ordered]@{}
                if ($APIEndpoint -match 'Private') {
                    $helper['Helpurl'] = "https://support.helpspot.com/index.php?pg=kb.page&id=164#$ApiEndpoint"
                }
                else {
                    $helper['Helpurl'] = "https://support.helpspot.com/index.php?pg=kb.page&id=163#$ApiEndpoint"
                }
                $config = Get-HelpspotApiDef -ApiDefinition $ApiEndpoint
                $helper['APIEndpoint'] = $config.Endpoint
                $helper['Method'] = $config.Method
                $helper['Description'] = $config.Description
                $helper['Url'] = $config.URL
                $i = 0
                $x = 0
                foreach ($Parameter in $config.Parameters.GetEnumerator()) {
                    if ($Parameter.value.Required -eq $true) {
                        $i++
                        $helper["RequiredParameter_$i"] = $Parameter.value.Name
                    }
                    else {
                        $x++
                        $helper["OptionalParameter_$x"] = $Parameter.value.Name
                    }
                }
                [PSCustomObject]$helper | Select-Object APIEndpoint, Method, Description, Url, HelpUrl, RequiredParameter*, OptionalParameter*
            }
            else {
                return 'Please specify an API endpoint'
            }
        }
        catch {
            throw $_
        }
    }
}
