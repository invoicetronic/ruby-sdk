# Invoicetronic_Sdk::Status

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_left** | **Integer** | Operations (invoices and validations) left. | [optional] |
| **signature_left** | **Integer** | Signatures left. | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::Status.new(
  operation_left: null,
  signature_left: null
)
```

