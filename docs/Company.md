# Invoicetronic_Sdk::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. Leave it at 0 for new records as it will be set automatically. | [optional] |
| **created** | **Time** | Creation date. It is set automatically. | [optional] |
| **version** | **Integer** | Row version, for optimistic concurrency. It is set automatically. | [optional] |
| **user_id** | **Integer** | User id. | [optional] |
| **vat** | **String** | Vat number. Must include the country code. |  |
| **fiscal_code** | **String** | Fiscal code. In most cases it&#39;s the same as the vat number. |  |
| **name** | **String** | Name |  |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::Company.new(
  id: null,
  created: null,
  version: null,
  user_id: null,
  vat: IT01234567891,
  fiscal_code: RSSMRA70A01F205V,
  name: Mario Rossi Srl
)
```

