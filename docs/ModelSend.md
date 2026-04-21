# Invoicetronic_Sdk::ModelSend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. For POST requests, leave it at &#x60;0&#x60; — the server will assign one automatically. For PUT requests, set it to the id of the record you want to update. | [optional] |
| **created** | **Time** | Creation date. It is set automatically. | [optional][readonly] |
| **version** | **Integer** | Row version, for optimistic concurrency. It is set automatically. | [optional][readonly] |
| **user_id** | **Integer** | User id. It is set automatically based on the authenticated user. | [optional][readonly] |
| **company_id** | **Integer** | Company id. It is set automatically based on the VAT number extracted from the invoice payload (the sender for &#x60;send&#x60;, the recipient for &#x60;receive&#x60;). | [optional][readonly] |
| **committente** | **String** | VAT number of the Cessionario/Committente (customer). This is automatically set based on the recipient&#39;s VAT number. | [optional][readonly] |
| **prestatore** | **String** | VAT number of the Cedente/Prestatore (vendor). This is automatically set based on the sender&#39;s VAT number. | [optional][readonly] |
| **identifier** | **String** | SDI identifier. This is set by the SDI and is guaranteed to be unique within the SDI system. | [optional][readonly] |
| **file_name** | **String** | Xml file name. If not provided on send, it will be auto-generated. | [optional] |
| **format** | **String** | SDI format (FPA12, FPR12, FSM10, ...) | [optional] |
| **payload** | **String** | Xml payload. This is the actual xml content, as string. On send, it can be base64 encoded. If it&#39;s not, it will be encoded before sending. It is guaranteed to be encrypted at rest. |  |
| **last_update** | **Time** | Last update from SDI. | [optional][readonly] |
| **date_sent** | **Time** | When the invoice was sent to SDI. | [optional][readonly] |
| **documents** | [**Array&lt;DocumentData&gt;**](DocumentData.md) | The invoices included in the payload. This is set by the system, based on the xml content. | [optional][readonly] |
| **encoding** | **String** | Whether the payload is Base64 encoded or a plain XML (text). | [optional] |
| **nome_committente** | **String** | Business name of the committente (client/buyer) extracted from the invoice XML. | [optional][readonly] |
| **meta_data** | **Hash&lt;String, String&gt;** | Optional metadata, as json. | [optional] |
| **latest_state** | **String** | Current SDI state of the invoice. Reflects the most recent update received from SDI. Null when no update has been received yet. | [optional][readonly] |
| **company** | [**Company**](Company.md) |  | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::ModelSend.new(
  id: 0,
  created: null,
  version: null,
  user_id: null,
  company_id: null,
  committente: null,
  prestatore: null,
  identifier: null,
  file_name: IT01180680397ITRON_00001.xml,
  format: FPR12,
  payload: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cDpGYXR0dXJhRWxldHRyb25pY2EgLi4uPjwvcDpGYXR0dXJhRWxldHRyb25pY2E+,
  last_update: null,
  date_sent: null,
  documents: null,
  encoding: null,
  nome_committente: null,
  meta_data: {&quot;order_id&quot;:&quot;ORD-123&quot;},
  latest_state: null,
  company: null
)
```

