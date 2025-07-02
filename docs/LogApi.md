# Invoicetronic_Sdk::LogApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**log_get**](LogApi.md#log_get) | **GET** /log | List events |
| [**log_id_get**](LogApi.md#log_id_get) | **GET** /log/{id} | Get an event by id |


## log_get

> <Array<Event>> log_get(opts)

List events

Every API operation is logged and can be retrieved here. Log records are preserved for 15 days.

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

api_instance = Invoicetronic_Sdk::LogApi.new
opts = {
  company_id: 56, # Integer | Company id
  endpoint: 'endpoint_example', # String | 
  method: 'method_example', # String | 
  api_verion: 56, # Integer | Api version
  status_code: 56, # Integer | Response status code
  date_created_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_created_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example', # String | Sort by field. Prefix with '-' for descending order.
  query: 'query_example', # String | 
  success: true, # Boolean | 
  date_time_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Date and time of the event
  date_time_to: Time.parse('2013-10-20T19:20:30+01:00') # Time | Date and time of the event
}

begin
  # List events
  result = api_instance.log_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling LogApi->log_get: #{e}"
end
```

#### Using the log_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Event>>, Integer, Hash)> log_get_with_http_info(opts)

```ruby
begin
  # List events
  data, status_code, headers = api_instance.log_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Event>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling LogApi->log_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | Company id | [optional] |
| **endpoint** | **String** |  | [optional] |
| **method** | **String** |  | [optional] |
| **api_verion** | **Integer** | Api version | [optional] |
| **status_code** | **Integer** | Response status code | [optional] |
| **date_created_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_created_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |
| **query** | **String** |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **date_time_from** | **Time** | Date and time of the event | [optional] |
| **date_time_to** | **Time** | Date and time of the event | [optional] |

### Return type

[**Array&lt;Event&gt;**](Event.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## log_id_get

> <Event> log_id_get(id)

Get an event by id

Every API operation is logged and can be retrieved here. Log records are preserved for 15 days.

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

api_instance = Invoicetronic_Sdk::LogApi.new
id = 56 # Integer | Item id

begin
  # Get an event by id
  result = api_instance.log_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling LogApi->log_id_get: #{e}"
end
```

#### Using the log_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> log_id_get_with_http_info(id)

```ruby
begin
  # Get an event by id
  data, status_code, headers = api_instance.log_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling LogApi->log_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**Event**](Event.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

