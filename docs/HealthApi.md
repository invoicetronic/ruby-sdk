# Invoicetronic_Sdk::HealthApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**health_get**](HealthApi.md#health_get) | **GET** /health | Health check |


## health_get

> health_get

Health check

Returns the health status of the API and its dependencies. No authentication required. Rate limited to 12 requests per minute.

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::HealthApi.new

begin
  # Health check
  api_instance.health_get
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling HealthApi->health_get: #{e}"
end
```

#### Using the health_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> health_get_with_http_info

```ruby
begin
  # Health check
  data, status_code, headers = api_instance.health_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling HealthApi->health_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

