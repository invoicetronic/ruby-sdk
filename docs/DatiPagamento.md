# Invoicetronic_Sdk::DatiPagamento

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condizioni_pagamento** | **String** |  | [optional] |
| **dettaglio_pagamento** | [**Array&lt;DettaglioPagamento&gt;**](DettaglioPagamento.md) |  | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::DatiPagamento.new(
  condizioni_pagamento: null,
  dettaglio_pagamento: null
)
```

