# Invoice_Sdk::ProblemHttpResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **problem_details** | [**ProblemDetails**](ProblemDetails.md) |  | [optional] |
| **content_type** | **String** |  | [optional][readonly] |
| **status_code** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'invoicetronic_invoice_sdk'

instance = Invoice_Sdk::ProblemHttpResult.new(
  problem_details: null,
  content_type: null,
  status_code: null
)
```

