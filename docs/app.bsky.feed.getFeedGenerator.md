Get-BskyFeedGenerator
---------------------




### Synopsis
app.bsky.feed.getFeedGenerator



---


### Description

app.bsky.feed.getFeedGenerator



---


### Related Links
* [https://github.com/bluesky-social/atproto/tree/main/lexicons/app/bsky/feed/getFeedGenerator.json](https://github.com/bluesky-social/atproto/tree/main/lexicons/app/bsky/feed/getFeedGenerator.json)





---


### Parameters
#### **Feed**




|Type      |Required|Position|PipelineInput        |
|----------|--------|--------|---------------------|
|`[String]`|true    |1       |true (ByPropertyName)|



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
Get-BskyFeedGenerator [-Feed] <String> [-Cache] [-WhatIf] [-Confirm] [<CommonParameters>]
```
