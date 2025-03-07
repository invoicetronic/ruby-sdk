# Invoicetronic_Sdk::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Error code. | [optional] |
| **description** | **String** | Error description. | [optional] |
| **hint** | **String** | Hint on how to solve the issue. | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::Error.new(
  code: null,
  description: null,
  hint: null
)
```

