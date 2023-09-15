function Get-AtprotoServer  {
<#
.Synopsis
    com.atproto.server.describeServer
.Description
    com.atproto.server.describeServer
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/server/describeServer.json
#>
[Alias('PSA.com.atproto.server.describeServer')]
[CmdletBinding(SupportsShouldProcess)]
param(

)

begin {
$NamespaceID = 'com.atproto.server.describeServer'
$httpMethod  = 'GET'
$InvokeAtSplat = [Ordered]@{Method=$httpMethod}
$InvokeAtSplat["PSTypeName"] = $NamespaceID
$parameterAliases = [Ordered]@{}
$AsByte = $false


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
                ) -AsByte:$AsByte
        
}
} 
