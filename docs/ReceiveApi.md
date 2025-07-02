# Invoicetronic_Sdk::ReceiveApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**receive_get**](ReceiveApi.md#receive_get) | **GET** /receive | List incoming invoices |
| [**receive_id_delete**](ReceiveApi.md#receive_id_delete) | **DELETE** /receive/{id} | Delete an incoming invoice by id |
| [**receive_id_get**](ReceiveApi.md#receive_id_get) | **GET** /receive/{id} | Get an incoming invoice by id |


## receive_get

> <Array<Receive>> receive_get(opts)

List incoming invoices

Receive invoices are the invoices that are received from other companies. They are preserved for two years in the live environment and 24 hours in the Sandbox.

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
  sort: 'sort_example' # String | Sort by field. Prefix with '-' for descending order.
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

Receive invoices are the invoices that are received from other companies. They are preserved for two years in the live environment and 24 hours in the Sandbox.

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

> <Receive> receive_id_get(id)

Get an incoming invoice by id

Receive invoices are the invoices that are received from other companies. They are preserved for two years in the live environment and 24 hours in the Sandbox.

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
  # Get an incoming invoice by id
  result = api_instance.receive_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ReceiveApi->receive_id_get: #{e}"
end
```

#### Using the receive_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Receive>, Integer, Hash)> receive_id_get_with_http_info(id)

```ruby
begin
  # Get an incoming invoice by id
  data, status_code, headers = api_instance.receive_id_get_with_http_info(id)
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

### Return type

[**Receive**](Receive.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

