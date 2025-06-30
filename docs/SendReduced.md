# Invoicetronic_Sdk::SendReduced

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | SDI identifier. | [optional] |
| **prestatore** | **String** | VAT number of the Cedente/Prestatore (vendor). | [optional] |
| **meta_data** | **Hash&lt;String, String&gt;** | Optional metadata, as json. | [optional] |
| **documents** | [**Array&lt;DocumentData&gt;**](DocumentData.md) | The invoices included in the payload. | [optional] |
| **date_sent** | **Time** | When the invoice was sent to SDI. | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::SendReduced.new(
  identifier: null,
  prestatore: null,
  meta_data: null,
  documents: null,
  date_sent: null
)
```

