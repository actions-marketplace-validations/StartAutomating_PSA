function Get-AtProtoSyncRepo  {
<#
.Synopsis
    com.atproto.sync.getRepo
.Description
    com.atproto.sync.getRepo
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/sync/getRepo.json
#>
[Alias('Get-AtProtocolSyncRepo','atproto.sync.getRepo','com.atproto.sync.getRepo')]
[CmdletBinding(SupportsShouldProcess)]
param(
# The DID of the repo.
[Parameter(Mandatory,ValueFromPipelineByPropertyName)]
[ComponentModel.DefaultBindingProperty('did')]
[String]
$Did,
# The revision of the repo to catch up from.
[Parameter(ValueFromPipelineByPropertyName)]
[ComponentModel.DefaultBindingProperty('since')]
[String]
$Since,
# If set, will cache results for performance.
[Management.Automation.SwitchParameter]
$Cache
)

begin {
$NamespaceID = 'com.atproto.sync.getRepo'
$httpMethod  = 'GET'
$InvokeAtSplat = [Ordered]@{Method=$httpMethod}
$InvokeAtSplat["PSTypeName"] = $NamespaceID
$parameterAliases = [Ordered]@{}
$AsByte = $true


    
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

