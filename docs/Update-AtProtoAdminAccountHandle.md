Update-AtProtoAdminAccountHandle
--------------------------------




### Synopsis
com.atproto.admin.updateAccountHandle



---


### Description

com.atproto.admin.updateAccountHandle



---


### Related Links
* [https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/admin/updateAccountHandle.json](https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/admin/updateAccountHandle.json)





---


### Parameters
#### **Did**

The Decentralized Identifier.  This is a uniqueID used throughout the At Protocol.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |1       |true (ByPropertyName)|



#### **Handle**




|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |2       |true (ByPropertyName)|



#### **WhatIf**
-WhatIf is an automatic variable that is created when a command has ```[CmdletBinding(SupportsShouldProcess)]```.
-WhatIf is used to see what would happen, or return operations without executing them
#### **Confirm**
-Confirm is an automatic variable that is created when a command has ```[CmdletBinding(SupportsShouldProcess)]```.
-Confirm is used to -Confirm each operation.

If you pass ```-Confirm:$false``` you will not be prompted.


If the command sets a ```[ConfirmImpact("Medium")]``` which is lower than ```$confirmImpactPreference```, you will not be prompted unless -Confirm is passed.



---


### Syntax
```PowerShell
Update-AtProtoAdminAccountHandle [[-Did] <String>] [[-Handle] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
