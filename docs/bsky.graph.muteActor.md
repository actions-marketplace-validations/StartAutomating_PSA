Block-BskyGraphActor
--------------------




### Synopsis
app.bsky.graph.muteActor



---


### Description

app.bsky.graph.muteActor



---


### Related Links
* [https://github.com/bluesky-social/atproto/tree/main/lexicons/app/bsky/graph/muteActor.json](https://github.com/bluesky-social/atproto/tree/main/lexicons/app/bsky/graph/muteActor.json)





---


### Parameters
#### **Actor**

The Actor.

This can be either a handle (e.g. @AtProto.com) or a Decentralized Identifier (.did)






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |1       |true (ByPropertyName)|



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
Block-BskyGraphActor [[-Actor] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```
