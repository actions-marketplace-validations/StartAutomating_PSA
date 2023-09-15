function Get-AtProtoLabelDefinition {
[Alias('atproto.label.defs','com.atproto.label.defs','com.atproto.label.defs#label','com.atproto.label.defs#selfLabels','com.atproto.label.defs#selfLabel')]
param(
)
$lexiconText = @'
{
  "lexicon": 1,
  "id": "com.atproto.label.defs",
  "defs": {
    "label": {
      "type": "object",
      "description": "Metadata tag on an atproto resource (eg, repo or record)",
      "required": ["src", "uri", "val", "cts"],
      "properties": {
        "src": {
          "type": "string",
          "format": "did",
          "description": "DID of the actor who created this label"
        },
        "uri": {
          "type": "string",
          "format": "uri",
          "description": "AT URI of the record, repository (account), or other resource which this label applies to"
        },
        "cid": {
          "type": "string",
          "format": "cid",
          "description": "optionally, CID specifying the specific version of 'uri' resource this label applies to"
        },
        "val": {
          "type": "string",
          "maxLength": 128,
          "description": "the short string name of the value or type of this label"
        },
        "neg": {
          "type": "boolean",
          "description": "if true, this is a negation label, overwriting a previous label"
        },
        "cts": {
          "type": "string",
          "format": "datetime",
          "description": "timestamp when this label was created"
        }
      }
    },
    "selfLabels": {
      "type": "object",
      "description": "Metadata tags on an atproto record, published by the author within the record.",
      "required": ["values"],
      "properties": {
        "values": {
          "type": "array",
          "items": { "type": "ref", "ref": "#selfLabel" },
          "maxLength": 10
        }
      }
    },
    "selfLabel": {
      "type": "object",
      "description": "Metadata tag on an atproto record, published by the author within the record. Note -- schemas should use #selfLabels, not #selfLabel.",
      "required": ["val"],
      "properties": {
        "val": {
          "type": "string",
          "maxLength": 128,
          "description": "the short string name of the value or type of this label"
        }
      }
    }
  }
}
'@
$lexicon = $lexiconText | ConvertFrom-JSON
if ($myInvocation.InvocationName -eq $myInvocation.MyCommand.Name) {
    $lexicon
} elseif ($myInvocation.InvocationName -like '*#*') {
    $lexicon.defs.$(@($myInvocation.InvocationName -split '\#',2)[1])
} else {
    $lexicon
}
} 
