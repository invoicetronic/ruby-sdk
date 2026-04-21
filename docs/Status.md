# Invoicetronic_Sdk::Status

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_left** | **Integer** | Operations (invoices and validations) left. | [optional] |
| **signature_left** | **Integer** | Signatures left. | [optional] |
| **has_active_seat** | **Boolean** | Whether the current API key has an active Desk seat. | [optional] |
| **is_sub_key** | **Boolean** | Whether the current API key is a sub-key (restricted key). | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::Status.new(
  operation_left: null,
  signature_left: null,
  has_active_seat: null,
  is_sub_key: null
)
```

