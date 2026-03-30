# Invoicetronic_Sdk::StatusApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**status_get**](StatusApi.md#status_get) | **GET** /status | Account status |


## status_get

> <Status> status_get

Account status

Retrieve the number of operations (invoices + validations) and signatures left on your account.  When `signature_left` is 0, you will receive a `403 Forbidden` response when trying to sign an invoice. Likewise, if `operation_left` is 0, you will receive a `403 Forbidden` response when storing or validating an invoice.  You can also check your account status from the [Dashboard](https://dashboard.invoicetronic.com), where you can purchase additional operations and/or signatures.  **Please note** that these values are not enforced if you are on the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

