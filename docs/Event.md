# Invoicetronic_Sdk::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. For POST requests, leave it at &#x60;0&#x60; — the server will assign one automatically. For PUT requests, set it to the id of the record you want to update. | [optional] |
| **created** | **Time** | Creation date. It is set automatically. | [optional][readonly] |
| **version** | **Integer** | Row version, for optimistic concurrency. It is set automatically. | [optional][readonly] |
| **user_id** | **Integer** | User id. | [optional] |
| **api_key_id** | **Integer** | Api key id. | [optional] |
| **company_id** | **Integer** | Company id. | [optional] |
| **method** | **String** | Request method. |  |
| **endpoint** | **String** | API endpoint. |  |
| **api_version** | **Integer** | Api version. | [optional] |
| **status_code** | **Integer** | Status code returned by the API. | [optional] |
| **date_time** | **Time** | Date and time of the request. | [optional] |
| **error** | **String** | Response error. | [optional] |
| **resource_id** | **Integer** | ID of the resource created or modified by this request. | [optional] |
| **user_agent** | **String** | User-Agent header from the HTTP request. | [optional] |
| **success** | **Boolean** | Whether the request was successful. | [optional][readonly] |
| **query** | **String** | Request query. Only used for internal logging, not sent to webhooks. | [optional] |
| **response_body** | **String** | Response payload. It is guaranteed to be encrypted at rest. | [optional] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::Event.new(
  id: 0,
  created: null,
  version: null,
  user_id: null,
  api_key_id: null,
  company_id: null,
  method: null,
  endpoint: null,
  api_version: null,
  status_code: null,
  date_time: null,
  error: null,
  resource_id: null,
  user_agent: null,
  success: null,
  query: null,
  response_body: null
)
```

