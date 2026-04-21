# Invoicetronic_Sdk::WebHookHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. For POST requests, leave it at &#x60;0&#x60; — the server will assign one automatically. For PUT requests, set it to the id of the record you want to update. | [optional] |
| **created** | **Time** | Creation date. It is set automatically. | [optional][readonly] |
| **version** | **Integer** | Row version, for optimistic concurrency. It is set automatically. | [optional][readonly] |
| **web_hook_id** | **Integer** | Webhook id. | [optional] |
| **user_id** | **Integer** | User id. | [optional] |
| **event** | **String** | Event name. | [optional] |
| **status_code** | **Integer** | HTTP status code returned by the webhook endpoint. A value of 0 means the request could not be completed due to a network error (e.g., DNS resolution failure, connection refused, or timeout). This typically indicates that the endpoint URL is misconfigured or no longer exists. | [optional] |
| **error** | **String** | Error description, if any. Null when the delivery is successful (2xx). Contains the exception message for network errors (status code 0) or the response body for non-2xx HTTP responses. | [optional] |
| **date_time** | **Time** | Date and time of the request. | [optional] |
| **success** | **Boolean** | Whether the request was successful. | [optional][readonly] |

## Example

```ruby
require 'invoicetronic_sdk'

instance = Invoicetronic_Sdk::WebHookHistory.new(
  id: 0,
  created: null,
  version: null,
  web_hook_id: null,
  user_id: null,
  event: null,
  status_code: null,
  error: null,
  date_time: null,
  success: null
)
```

