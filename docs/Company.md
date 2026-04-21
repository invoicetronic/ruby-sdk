# Invoicetronic_Sdk::Company

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. For POST requests, leave it at &#x60;0&#x60; — the server will assign one automatically. For PUT requests, set it to the id of the record you want to update. | [optional] |
| **created** | **Time** | Creation date. It is set automatically. | [optional][readonly] |
| **version** | **Integer** | Row version, for optimistic concurrency. It is set automatically. | [optional][readonly] |
| **user_id** | **Integer** | User id. It is set automatically based on the authenticated user. | [optional][readonly] |
| **vat** | **String** | Vat number. Must include the country code. |  |
| **fiscal_code** | **String** | Fiscal code. In most cases it&#39;s the same as the vat number. |  |
| **name** | **String** | Name |  |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::Company.new(
  id: 0,
  created: null,
  version: null,
  user_id: null,
  vat: IT01234567891,
  fiscal_code: RSSMRA70A01F205V,
  name: Mario Rossi Srl
)
```

