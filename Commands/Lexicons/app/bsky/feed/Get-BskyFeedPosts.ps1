function Get-BskyFeedPosts  {
<#
.Synopsis
    app.bsky.feed.getPosts
.Description
    app.bsky.feed.getPosts
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/app/bsky/feed/getPosts.json
#>
[Alias('Get-BlueSkyFeedPosts','bsky.feed.getPosts','app.bsky.feed.getPosts')]
[CmdletBinding(SupportsShouldProcess)]
param(
[Parameter(Mandatory,ValueFromPipelineByPropertyName)]
[ComponentModel.DefaultBindingProperty('uris')]
[Management.Automation.PSObject]
$Uris,
# If set, will cache results for performance.
[Management.Automation.SwitchParameter]
$Cache
)

begin {
$NamespaceID = 'app.bsky.feed.getPosts'
$httpMethod  = 'GET'
$InvokeAtSplat = [Ordered]@{Method=$httpMethod}
$InvokeAtSplat.DecorateProperty = [Ordered]@{
    'posts'='app.bsky.feed.defs#postView'
    'posts.author'='app.bsky.actor.defs#profileViewBasic'
    'posts.viewer'='app.bsky.feed.defs#viewerState'
}
$InvokeAtSplat["PSTypeName"] = $NamespaceID
$parameterAliases = [Ordered]@{}
$AsByte = $false


    
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
                } -ParameterAlias $parameterAliases @InvokeAtSplat -ContentType $(
                    if ($ContentType) {
                        $ContentType
                    } else {
                        "application/json"   
                    }
                ) -AsByte:$AsByte -Property {
                    $_
                } -Cache:$(
                    if ($cache) {$cache} else { $false }
                )
        
}
} 

