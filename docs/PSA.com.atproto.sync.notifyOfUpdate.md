Watch-AtProtoSyncUpdate
-----------------------




### Synopsis
com.atproto.sync.notifyOfUpdate



---


### Description

com.atproto.sync.notifyOfUpdate



---


### Related Links
* [https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/sync/notifyOfUpdate.json](https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/sync/notifyOfUpdate.json)





---


### Parameters
#### **Hostname**

Hostname of the service that is notifying of update.






|Type      |Required|Position|PipelineInput|
|----------|--------|--------|-------------|
|`[String]`|false   |1       |false        |



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
Watch-AtProtoSyncUpdate [[-Hostname] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
