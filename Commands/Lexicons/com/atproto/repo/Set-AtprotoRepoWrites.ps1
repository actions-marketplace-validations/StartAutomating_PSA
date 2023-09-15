function Set-AtprotoRepoWrites  {
<#
.Synopsis
    com.atproto.repo.applyWrites
.Description
    com.atproto.repo.applyWrites
.Link
    https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/repo/applyWrites.json
#>
[Alias('PSA.com.atproto.repo.applyWrites')]
[CmdletBinding(SupportsShouldProcess)]
param(
# The handle or DID of the repo.
[ComponentModel.DefaultBindingProperty('repo')]
[String]
$Repo,
# Validate the records?
[ComponentModel.DefaultBindingProperty('validate')]
[Management.Automation.SwitchParameter]
$Validate,
[ComponentModel.DefaultBindingProperty('writes')]
[Management.Automation.PSObject]
$Writes,
[ComponentModel.DefaultBindingProperty('swapCommit')]
[String]
$SwapCommit
)

begin {
$NamespaceID = 'com.atproto.repo.applyWrites'
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
