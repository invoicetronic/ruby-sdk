# Invoicetronic_Sdk::ReceiveApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**receive_get**](ReceiveApi.md#receive_get) | **GET** /receive | List incoming invoices |
| [**receive_id_delete**](ReceiveApi.md#receive_id_delete) | **DELETE** /receive/{id} | Delete an incoming invoice by id |
| [**receive_id_get**](ReceiveApi.md#receive_id_get) | **GET** /receive/{id} | Get an incoming invoice by id |
| [**receive_id_payload_get**](ReceiveApi.md#receive_id_payload_get) | **GET** /receive/{id}/payload | Get a receive invoice payload by id |


## receive_get

> <Array<Receive>> receive_get(opts)

List incoming invoices

Retrieve a paginated list of receive invoices. Results can be filtered by various criteria such as company, date ranges, sender, document number, and free-text search (`q`). Returns invoice metadata; set `include_payload` to true to include the full invoice content. Invoices are marked as read (`is_read` = true) only when `include_payload` is true.  **Receive** invoices are inbound purchase invoices received from suppliers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 24 hours in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  Inbound invoices are routed to your account via the recipient VAT number, so the recipient company must exist in Invoicetronic for the invoice to be matched. If an invoice arrives before its company has been registered, it is held by our SDI infrastructure and automatically re-processed once the company is created—no invoice is lost. See [Prerequisites](https://invoicetronic.com/en/docs/prerequisites/) for the recommended setup order.

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'
# setup authorization
Invoicetronic_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoicetronic_Sdk::ReceiveApi.new
opts = {
  company_id: 56, # Integer | Company id
  identifier: 'identifier_example', # String | SDI identifier.
  unread: true, # Boolean | Unread items only.
  committente: 'committente_example', # String | Vat number or fiscal code.
  prestatore: 'prestatore_example', # String | Vat number or fiscal code.
  file_name: 'file_name_example', # String | File name.
  last_update_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  last_update_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_sent_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_sent_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_number: 'document_number_example', # String | Document number.
  include_payload: true, # Boolean | Include payload in the response. Defaults to false.
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example', # String | Sort by field. Prefix with '-' for descending order.
  q: 'q_example' # String | Full-text search across committente, prestatore, identifier, and file name.
}

begin
  # List incoming invoices
  result = api_instance.receive_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_get: #{e}"
end
```

#### Using the receive_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Receive>>, Integer, Hash)> receive_get_with_http_info(opts)

```ruby
begin
  # List incoming invoices
  data, status_code, headers = api_instance.receive_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Receive>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | Company id | [optional] |
| **identifier** | **String** | SDI identifier. | [optional] |
| **unread** | **Boolean** | Unread items only. | [optional] |
| **committente** | **String** | Vat number or fiscal code. | [optional] |
| **prestatore** | **String** | Vat number or fiscal code. | [optional] |
| **file_name** | **String** | File name. | [optional] |
| **last_update_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **last_update_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_sent_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_sent_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_date_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_date_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_number** | **String** | Document number. | [optional] |
| **include_payload** | **Boolean** | Include payload in the response. Defaults to false. | [optional] |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |
| **q** | **String** | Full-text search across committente, prestatore, identifier, and file name. | [optional] |

### Return type

[**Array&lt;Receive&gt;**](Receive.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## receive_id_delete

> <Receive> receive_id_delete(id)

Delete an incoming invoice by id

Permanently delete a receive invoice by its internal id. This action cannot be undone.  **Receive** invoices are inbound purchase invoices received from suppliers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 24 hours in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  Inbound invoices are routed to your account via the recipient VAT number, so the recipient company must exist in Invoicetronic for the invoice to be matched. If an invoice arrives before its company has been registered, it is held by our SDI infrastructure and automatically re-processed once the company is created—no invoice is lost. See [Prerequisites](https://invoicetronic.com/en/docs/prerequisites/) for the recommended setup order.

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'
# setup authorization
Invoicetronic_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoicetronic_Sdk::ReceiveApi.new
id = 56 # Integer | Item id

begin
  # Delete an incoming invoice by id
  result = api_instance.receive_id_delete(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_delete: #{e}"
end
```

#### Using the receive_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Receive>, Integer, Hash)> receive_id_delete_with_http_info(id)

```ruby
begin
  # Delete an incoming invoice by id
  data, status_code, headers = api_instance.receive_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Receive>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**Receive**](Receive.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## receive_id_get

> <Receive> receive_id_get(id, opts)

Get an incoming invoice by id

Retrieve an incoming invoice by its internal id. The `id` is unique and assigned by the system when the invoice is received. Returns invoice metadata; set `include_payload` to true to include the full invoice content. The invoice is marked as read (`is_read` = true) only when `include_payload` is true.  **Receive** invoices are inbound purchase invoices received from suppliers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 24 hours in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  Inbound invoices are routed to your account via the recipient VAT number, so the recipient company must exist in Invoicetronic for the invoice to be matched. If an invoice arrives before its company has been registered, it is held by our SDI infrastructure and automatically re-processed once the company is created—no invoice is lost. See [Prerequisites](https://invoicetronic.com/en/docs/prerequisites/) for the recommended setup order.

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'
# setup authorization
Invoicetronic_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoicetronic_Sdk::ReceiveApi.new
id = 56 # Integer | Item id
opts = {
  include_payload: true # Boolean | Include payload in the response. Defaults to false.
}

begin
  # Get an incoming invoice by id
  result = api_instance.receive_id_get(id, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_get: #{e}"
end
```

#### Using the receive_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Receive>, Integer, Hash)> receive_id_get_with_http_info(id, opts)

```ruby
begin
  # Get an incoming invoice by id
  data, status_code, headers = api_instance.receive_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Receive>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |
| **include_payload** | **Boolean** | Include payload in the response. Defaults to false. | [optional][default to false] |

### Return type

[**Receive**](Receive.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## receive_id_payload_get

> receive_id_payload_get(id)

Get a receive invoice payload by id

Retrieve only the payload of a receive invoice, without the full invoice metadata. This is useful when you already have the invoice metadata and only need the XML content.  The response is a `text/plain` string, identical to the `payload` field returned by the standard GET endpoint with `include_payload=true`.  The invoice is marked as read (`is_read` = true) and counted as an operation, same as when retrieving the full invoice with `include_payload=true`. 

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'
# setup authorization
Invoicetronic_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoicetronic_Sdk::ReceiveApi.new
id = 56 # Integer | Item id

begin
  # Get a receive invoice payload by id
  api_instance.receive_id_payload_get(id)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_payload_get: #{e}"
end
```

#### Using the receive_id_payload_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> receive_id_payload_get_with_http_info(id)

```ruby
begin
  # Get a receive invoice payload by id
  data, status_code, headers = api_instance.receive_id_payload_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_payload_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json

