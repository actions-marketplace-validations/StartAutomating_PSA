function Update-AtprotoAdminAccountHandle  {
<#
.Synopsis
    com.atproto.admin.updateAccountHandle
.Description
    com.atproto.admin.updateAccountHandle
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/admin/updateAccountHandle.json
#>
[Alias('PSA.com.atproto.admin.updateAccountHandle')]
[CmdletBinding(SupportsShouldProcess)]
param(
[ComponentModel.DefaultBindingProperty('did')]
[String]
$Did,
[ComponentModel.DefaultBindingProperty('handle')]
[String]
$Handle
)

begin {
$NamespaceID = 'com.atproto.admin.updateAccountHandle'
$httpMethod  = 'POST'
$InvokeAtSplat = [Ordered]@{Method=$httpMethod}
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
                ) -AsByte:$AsByte
        
}
} 
