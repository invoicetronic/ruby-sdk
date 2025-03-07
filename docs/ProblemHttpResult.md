# Invoicetronic_Sdk::ProblemHttpResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **problem_details** | [**ProblemDetails**](ProblemDetails.md) |  | [optional] |
| **content_type** | **String** |  | [optional][readonly] |
| **status_code** | **Integer** |  | [optional][readonly] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::ProblemHttpResult.new(
  problem_details: null,
  content_type: null,
  status_code: null
)
```

