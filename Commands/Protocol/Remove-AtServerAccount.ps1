function Remove-AtServerAccount  {
<#
.Synopsis
    com.atproto.server.deleteAccount
.Description
    com.atproto.server.deleteAccount
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/server/deleteAccount.json
#>
[Alias('PSA.com.atproto.server.deleteAccount')]
[CmdletBinding(SupportsShouldProcess)]
param(
[ComponentModel.DefaultBindingProperty('did')]
[String]
$Did,
[ComponentModel.DefaultBindingProperty('password')]
[String]
$Password,
[ComponentModel.DefaultBindingProperty('token')]
[String]
$Token
)

begin {
$NamespaceID = 'com.atproto.server.deleteAccount'
$httpMethod  = 'POST'
$InvokeAtSplat = [Ordered]@{Method=$httpMethod}
$InvokeAtSplat["PSTypeName"] = $NamespaceID
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

