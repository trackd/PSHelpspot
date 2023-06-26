function Invoke-HelpspotApi {
    <#
    .Example
    Invoke-HelpspotApi -ApiEndpoint private.filter.get -Params @{ xFilter='123' } -Debug
    .LINK
    https://support.helpspot.com/index.php?pg=kb.page&id=164
    #>
    [cmdletbinding(HelpUri = 'https://support.helpspot.com/index.php?pg=kb.page&id=164')]
    param(
        [Parameter(Mandatory)]
        [ValidateScript({ $null -ne (Get-HelpspotApiDef -ApiDefinition $_) })]
        [String]
        $ApiEndpoint,
        [Parameter()]
        [System.Collections.IDictionary]
        $Params,
        [Parameter(Mandatory)]
        [String]
        $baseUrl,
        [Parameter(Mandatory)]
        [String]
        $apikey
    )
    begin {
        $headers = @{
            Authorization = "Bearer $apikey"
        }
        $config = Get-HelpspotApiDef -Apidefinition $ApiEndpoint
        if ($Params) {
            $ExtraParamString = [System.Web.HttpUtility]::ParseQueryString('')
            foreach ($object in $Params.GetEnumerator()) {
                # check if valid parameter for endpoint
                if ($config.param[$object.Name]) {
                    # add it to string
                    $ExtraParamString.Add("$($object.Name)", "$($object.Value)")
                    # remove from hashtable for future check if all required params are given.
                    $config.param.remove($object.Name)
                } else {
                    Write-Warning "$($object.Name) is not a valid parameter for this endpoint only: `n$((Get-HelpspotApiDef -Apidefinition $ApiEndpoint).param.keys -join ', ')"
                }
            }
            $urlBuilder = "$($baseUrl)/api/index.php?method=$($ApiEndpoint)&$($ExtraParamString.Tostring())&output=json"
        } else {
            $urlBuilder = "$($baseUrl)/api/index.php?method=$($ApiEndpoint)&output=json"
        }
    }
    process {
        Write-Debug "Method: $($config.method) Url: $urlBuilder"
        try {
            # check if all required params are removed from $config
            $RequiredParameters = $config.param.GetEnumerator() | Where-Object { $_.Value.Required -eq $true }
            if (-Not $RequiredParameters) {
                $response = Invoke-RestMethod -Headers $headers -Uri $urlBuilder -Method $config.method
                $response
            } else {
                Write-Debug "config: $($config.param.GetEnumerator() | Out-String )"
                Write-Error "Missing Parameters $($RequiredParameters.key -join ', ') `nGet-HelpspotAPIHelp -ApiEndpoint $($ApiEndpoint)" -ErrorAction Stop
            }
        } catch {
            throw $_
        }
    }
}
