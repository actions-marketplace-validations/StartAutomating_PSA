Get-AtProtoRepoRecord
---------------------




### Synopsis
com.atproto.repo.getRecord



---


### Description

com.atproto.repo.getRecord



---


### Related Links
* [https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/repo/getRecord.json](https://github.com/bluesky-social/atproto/tree/main/lexicons/com/atproto/repo/getRecord.json)





---


### Parameters
#### **Repo**

The handle or DID of the repo.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|true    |1       |true (ByPropertyName)|



#### **Collection**

The NSID of the record collection.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|true    |2       |true (ByPropertyName)|



#### **Rkey**

The key of the record.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|true    |3       |true (ByPropertyName)|



#### **Cid**

The CID of the version of the record. If not specified, then return the most recent version.






|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|false   |4       |true (ByPropertyName)|



#### **Cache**

If set, will cache results for performance.






|Type      |Required|Position|PipelineInput|
|----------|--------|--------|-------------|
|`[Switch]`|false   |named   |false        |



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
Get-AtProtoRepoRecord [-Repo] <String> [-Collection] <String> [-Rkey] <String> [[-Cid] <String>] [-Cache] [-WhatIf] [-Confirm] [<CommonParameters>]
```
