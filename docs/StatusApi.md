# Invoicetronic_Sdk::StatusApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**status_get**](StatusApi.md#status_get) | **GET** /status | Account status |


## status_get

> <Status> status_get

Account status

This endpoint is used to know how many operations (invoices + validations) and signatures are left on your account.   When `signature_left` is 0, you will receive a `403 Forbidden` response if you try to sign an invoice. Likewise, if `operation_left` is 0, you will receive a `403 Forbidden` response when storing or validating an invoice.  You can raise the limits by purchasing operations and/or signatures from the [Dashboard](https://dashboard.invoicetronic.com).  __Please note__ that these values are not enforced if you are on the Sandbox. See the [API Keys & Sandbox](https://invoicetronic.com/apikeys/) documentation section to learn more about the Sandbox.

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

api_instance = Invoicetronic_Sdk::StatusApi.new

begin
  # Account status
  result = api_instance.status_get
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling StatusApi->status_get: #{e}"
end
```

#### Using the status_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Status>, Integer, Hash)> status_get_with_http_info

```ruby
begin
  # Account status
  data, status_code, headers = api_instance.status_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Status>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling StatusApi->status_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Status**](Status.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

