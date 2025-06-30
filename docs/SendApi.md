# Invoicetronic_Sdk::SendApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_file_post**](SendApi.md#send_file_post) | **POST** /send/file | Add an invoice by file |
| [**send_get**](SendApi.md#send_get) | **GET** /send | List invoices |
| [**send_id_get**](SendApi.md#send_id_get) | **GET** /send/{id} | Get a invoice by id |
| [**send_json_post**](SendApi.md#send_json_post) | **POST** /send/json | Add an invoice by json |
| [**send_post**](SendApi.md#send_post) | **POST** /send | Add an invoice |
| [**send_validate_file_post**](SendApi.md#send_validate_file_post) | **POST** /send/validate/file | Validate an invoice file |
| [**send_validate_json_post**](SendApi.md#send_validate_json_post) | **POST** /send/validate/json | Validate an invoice by json |
| [**send_validate_post**](SendApi.md#send_validate_post) | **POST** /send/validate | Validate an invoice |
| [**send_validate_xml_post**](SendApi.md#send_validate_xml_post) | **POST** /send/validate/xml | Validate an invoice by xml |
| [**send_xml_post**](SendApi.md#send_xml_post) | **POST** /send/xml | Add an invoice by xml |


## send_file_post

> <ModelSend> send_file_post(file, opts)

Add an invoice by file

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
file = File.new('/path/to/some/file') # File | 
opts = {
  validate: true, # Boolean | Validate the document first, and reject it on failure.
  signature: 'None' # String | Whether to digitally sign the document.
}

begin
  # Add an invoice by file
  result = api_instance.send_file_post(file, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_file_post: #{e}"
end
```

#### Using the send_file_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_file_post_with_http_info(file, opts)

```ruby
begin
  # Add an invoice by file
  data, status_code, headers = api_instance.send_file_post_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_file_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |
| **signature** | **String** | Whether to digitally sign the document. | [optional][default to &#39;Auto&#39;] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## send_get

> <Array<ModelSend>> send_get(opts)

List invoices

test **markdown**.

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

api_instance = Invoicetronic_Sdk::SendApi.new
opts = {
  company_id: 56, # Integer | Company id
  identifier: 'identifier_example', # String | SDI identifier.
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
  page: 56, # Integer | Page number. Defaults to 1.
  page_size: 56, # Integer | Items per page. Defaults to 50. Cannot be greater than 200.
  sort: 'sort_example' # String | Sort by field. Prefix with '-' for descending order.
}

begin
  # List invoices
  result = api_instance.send_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_get: #{e}"
end
```

#### Using the send_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ModelSend>>, Integer, Hash)> send_get_with_http_info(opts)

```ruby
begin
  # List invoices
  data, status_code, headers = api_instance.send_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ModelSend>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | Company id | [optional] |
| **identifier** | **String** | SDI identifier. | [optional] |
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
| **page** | **Integer** | Page number. Defaults to 1. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Defaults to 50. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |

### Return type

[**Array&lt;ModelSend&gt;**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_id_get

> <ModelSend> send_id_get(id)

Get a invoice by id

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
id = 56 # Integer | Item id

begin
  # Get a invoice by id
  result = api_instance.send_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_id_get: #{e}"
end
```

#### Using the send_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_id_get_with_http_info(id)

```ruby
begin
  # Get a invoice by id
  data, status_code, headers = api_instance.send_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_json_post

> <ModelSend> send_json_post(fattura_ordinaria, opts)

Add an invoice by json

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
fattura_ordinaria = Invoicetronic_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 
opts = {
  validate: true, # Boolean | Validate the document first, and reject it on failure.
  signature: 'None' # String | Whether to digitally sign the document.
}

begin
  # Add an invoice by json
  result = api_instance.send_json_post(fattura_ordinaria, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_json_post: #{e}"
end
```

#### Using the send_json_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_json_post_with_http_info(fattura_ordinaria, opts)

```ruby
begin
  # Add an invoice by json
  data, status_code, headers = api_instance.send_json_post_with_http_info(fattura_ordinaria, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_json_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fattura_ordinaria** | [**FatturaOrdinaria**](FatturaOrdinaria.md) |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |
| **signature** | **String** | Whether to digitally sign the document. | [optional][default to &#39;Auto&#39;] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_post

> <ModelSend> send_post(model_send, opts)

Add an invoice

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
model_send = Invoicetronic_Sdk::ModelSend.new # ModelSend | 
opts = {
  validate: true, # Boolean | Validate the document first, and reject it on failure.
  signature: 'None' # String | Whether to digitally sign the document.
}

begin
  # Add an invoice
  result = api_instance.send_post(model_send, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_post: #{e}"
end
```

#### Using the send_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_post_with_http_info(model_send, opts)

```ruby
begin
  # Add an invoice
  data, status_code, headers = api_instance.send_post_with_http_info(model_send, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_send** | [**ModelSend**](ModelSend.md) |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |
| **signature** | **String** | Whether to digitally sign the document. | [optional][default to &#39;Auto&#39;] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_validate_file_post

> send_validate_file_post(file)

Validate an invoice file

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
file = File.new('/path/to/some/file') # File | 

begin
  # Validate an invoice file
  api_instance.send_validate_file_post(file)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_file_post: #{e}"
end
```

#### Using the send_validate_file_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_validate_file_post_with_http_info(file)

```ruby
begin
  # Validate an invoice file
  data, status_code, headers = api_instance.send_validate_file_post_with_http_info(file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_file_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** |  |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## send_validate_json_post

> send_validate_json_post(fattura_ordinaria)

Validate an invoice by json

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
fattura_ordinaria = Invoicetronic_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 

begin
  # Validate an invoice by json
  api_instance.send_validate_json_post(fattura_ordinaria)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_json_post: #{e}"
end
```

#### Using the send_validate_json_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_validate_json_post_with_http_info(fattura_ordinaria)

```ruby
begin
  # Validate an invoice by json
  data, status_code, headers = api_instance.send_validate_json_post_with_http_info(fattura_ordinaria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_json_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fattura_ordinaria** | [**FatturaOrdinaria**](FatturaOrdinaria.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_validate_post

> send_validate_post(model_send)

Validate an invoice

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
model_send = Invoicetronic_Sdk::ModelSend.new # ModelSend | 

begin
  # Validate an invoice
  api_instance.send_validate_post(model_send)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_post: #{e}"
end
```

#### Using the send_validate_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_validate_post_with_http_info(model_send)

```ruby
begin
  # Validate an invoice
  data, status_code, headers = api_instance.send_validate_post_with_http_info(model_send)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_send** | [**ModelSend**](ModelSend.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_validate_xml_post

> send_validate_xml_post(fattura_ordinaria)

Validate an invoice by xml

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
fattura_ordinaria = Invoicetronic_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 

begin
  # Validate an invoice by xml
  api_instance.send_validate_xml_post(fattura_ordinaria)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_xml_post: #{e}"
end
```

#### Using the send_validate_xml_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_validate_xml_post_with_http_info(fattura_ordinaria)

```ruby
begin
  # Validate an invoice by xml
  data, status_code, headers = api_instance.send_validate_xml_post_with_http_info(fattura_ordinaria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_xml_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fattura_ordinaria** | [**FatturaOrdinaria**](FatturaOrdinaria.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/xml
- **Accept**: application/json


## send_xml_post

> <ModelSend> send_xml_post(fattura_ordinaria, opts)

Add an invoice by xml

Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.

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

api_instance = Invoicetronic_Sdk::SendApi.new
fattura_ordinaria = Invoicetronic_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 
opts = {
  validate: true, # Boolean | Validate the document first, and reject it on failure.
  signature: 'None' # String | Whether to digitally sign the document.
}

begin
  # Add an invoice by xml
  result = api_instance.send_xml_post(fattura_ordinaria, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_xml_post: #{e}"
end
```

#### Using the send_xml_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_xml_post_with_http_info(fattura_ordinaria, opts)

```ruby
begin
  # Add an invoice by xml
  data, status_code, headers = api_instance.send_xml_post_with_http_info(fattura_ordinaria, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_xml_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fattura_ordinaria** | [**FatturaOrdinaria**](FatturaOrdinaria.md) |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |
| **signature** | **String** | Whether to digitally sign the document. | [optional][default to &#39;Auto&#39;] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/xml
- **Accept**: application/json

