function Get-AtUnspeccedPopularFeedGenerators  {
<#
.Synopsis
    app.bsky.unspecced.getPopularFeedGenerators
.Description
    app.bsky.unspecced.getPopularFeedGenerators
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/app/bsky/unspecced/getPopularFeedGenerators.json
#>
[Alias('PSA.app.bsky.unspecced.getPopularFeedGenerators')]
[CmdletBinding(SupportsShouldProcess)]
param(
[ComponentModel.DefaultBindingProperty('limit')]
[Management.Automation.PSObject]
$Limit,
[ComponentModel.DefaultBindingProperty('cursor')]
[String]
$Cursor,
[ComponentModel.DefaultBindingProperty('query')]
[String]
$Query
)

begin {
$NamespaceID = 'app.bsky.unspecced.getPopularFeedGenerators'
$httpMethod  = 'GET'
$InvokeAtSplat = [Ordered]@{Method=$httpMethod}
$parameterAliases = [Ordered]@{}


    
:nextParameter foreach ($paramMetadata in 
    ([Management.Automation.CommandMetadata]$MyInvocation.MyCommand).Parameters.Values) {
    
    foreach ($attr in $paramMetadata.Attributes) {
        if ($attr -is [ComponentModel.DefaultBindingPropertyAttribute]) {
            $parameterAliases[$paramMetadata.Name] = $attr.Name
            continue nextParameter
        }
    }
}



    $parameterQueue = [Collections.Queue]::new()

}
process {

$parameterQueue.Enqueue([Ordered]@{} + $PSBoundParameters)            
        
}
end {

            $parameterQueue.ToArray() |
                Invoke-AtProtocol -Method $httpMethod -NamespaceID $NamespaceID -Parameter {
                    $_
                } -ParameterAlias $parameterAliases @InvokeAtSplat
        
}
} 

