# Invoice_Sdk::SendApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**invoice_v1_send_files_post**](SendApi.md#invoice_v1_send_files_post) | **POST** /invoice/v1/send/files | Add an invoice by file |
| [**invoice_v1_send_get**](SendApi.md#invoice_v1_send_get) | **GET** /invoice/v1/send | List invoices |
| [**invoice_v1_send_id_get**](SendApi.md#invoice_v1_send_id_get) | **GET** /invoice/v1/send/{id} | Get a invoice by id |
| [**invoice_v1_send_json_post**](SendApi.md#invoice_v1_send_json_post) | **POST** /invoice/v1/send/json | Add an invoice by json |
| [**invoice_v1_send_post**](SendApi.md#invoice_v1_send_post) | **POST** /invoice/v1/send | Add an invoice |
| [**invoice_v1_send_validate_files_post**](SendApi.md#invoice_v1_send_validate_files_post) | **POST** /invoice/v1/send/validate/files | Validate an invoice by file |
| [**invoice_v1_send_validate_json_post**](SendApi.md#invoice_v1_send_validate_json_post) | **POST** /invoice/v1/send/validate/json | Validate an invoice by json |
| [**invoice_v1_send_validate_post**](SendApi.md#invoice_v1_send_validate_post) | **POST** /invoice/v1/send/validate | Validate an invoice |
| [**invoice_v1_send_validate_xml_post**](SendApi.md#invoice_v1_send_validate_xml_post) | **POST** /invoice/v1/send/validate/xml | Validate an invoice by xml |
| [**invoice_v1_send_xml_post**](SendApi.md#invoice_v1_send_xml_post) | **POST** /invoice/v1/send/xml | Add an invoice by xml |


## invoice_v1_send_files_post

> <ModelSend> invoice_v1_send_files_post(files, opts)

Add an invoice by file

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
files = [File.new('/path/to/some/file')] # Array<File> | 
opts = {
  validate: true # Boolean | Validate the document first, and reject it on failure.
}

begin
  # Add an invoice by file
  result = api_instance.invoice_v1_send_files_post(files, opts)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_files_post: #{e}"
end
```

#### Using the invoice_v1_send_files_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> invoice_v1_send_files_post_with_http_info(files, opts)

```ruby
begin
  # Add an invoice by file
  data, status_code, headers = api_instance.invoice_v1_send_files_post_with_http_info(files, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_files_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files** | **Array&lt;File&gt;** |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## invoice_v1_send_get

> <Array<ModelSend>> invoice_v1_send_get(opts)

List invoices

test **markdown**.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
opts = {
  company_id: 56, # Integer | Company id.
  identifier: 'identifier_example', # String | SDI identifier.
  committente: 'committente_example', # String | VAT number or fiscal code.
  prestatore: 'prestatore_example', # String | VAT number or fiscal code.
  file_name: 'file_name_example', # String | File name.
  last_update_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  last_update_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_sent_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_sent_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_number: 'document_number_example', # String | Document number.
  page: 56, # Integer | Page number.
  page_size: 56 # Integer | Items per page.
}

begin
  # List invoices
  result = api_instance.invoice_v1_send_get(opts)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_get: #{e}"
end
```

#### Using the invoice_v1_send_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ModelSend>>, Integer, Hash)> invoice_v1_send_get_with_http_info(opts)

```ruby
begin
  # List invoices
  data, status_code, headers = api_instance.invoice_v1_send_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ModelSend>>
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | Company id. | [optional] |
| **identifier** | **String** | SDI identifier. | [optional] |
| **committente** | **String** | VAT number or fiscal code. | [optional] |
| **prestatore** | **String** | VAT number or fiscal code. | [optional] |
| **file_name** | **String** | File name. | [optional] |
| **last_update_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **last_update_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_sent_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_sent_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_date_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_date_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_number** | **String** | Document number. | [optional] |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. | [optional][default to 100] |

### Return type

[**Array&lt;ModelSend&gt;**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_v1_send_id_get

> <ModelSend> invoice_v1_send_id_get(id)

Get a invoice by id

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
id = 56 # Integer | Item id.

begin
  # Get a invoice by id
  result = api_instance.invoice_v1_send_id_get(id)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_id_get: #{e}"
end
```

#### Using the invoice_v1_send_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> invoice_v1_send_id_get_with_http_info(id)

```ruby
begin
  # Get a invoice by id
  data, status_code, headers = api_instance.invoice_v1_send_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id. |  |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_v1_send_json_post

> <ModelSend> invoice_v1_send_json_post(fattura_ordinaria, opts)

Add an invoice by json

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
fattura_ordinaria = Invoice_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 
opts = {
  validate: true # Boolean | Validate the document first, and reject it on failure.
}

begin
  # Add an invoice by json
  result = api_instance.invoice_v1_send_json_post(fattura_ordinaria, opts)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_json_post: #{e}"
end
```

#### Using the invoice_v1_send_json_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> invoice_v1_send_json_post_with_http_info(fattura_ordinaria, opts)

```ruby
begin
  # Add an invoice by json
  data, status_code, headers = api_instance.invoice_v1_send_json_post_with_http_info(fattura_ordinaria, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_json_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fattura_ordinaria** | [**FatturaOrdinaria**](FatturaOrdinaria.md) |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invoice_v1_send_post

> <ModelSend> invoice_v1_send_post(model_send, opts)

Add an invoice

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
model_send = Invoice_Sdk::ModelSend.new # ModelSend | 
opts = {
  validate: true # Boolean | Validate the document first, and reject it on failure.
}

begin
  # Add an invoice
  result = api_instance.invoice_v1_send_post(model_send, opts)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_post: #{e}"
end
```

#### Using the invoice_v1_send_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> invoice_v1_send_post_with_http_info(model_send, opts)

```ruby
begin
  # Add an invoice
  data, status_code, headers = api_instance.invoice_v1_send_post_with_http_info(model_send, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_send** | [**ModelSend**](ModelSend.md) |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## invoice_v1_send_validate_files_post

> invoice_v1_send_validate_files_post(files)

Validate an invoice by file

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
files = [File.new('/path/to/some/file')] # Array<File> | 

begin
  # Validate an invoice by file
  api_instance.invoice_v1_send_validate_files_post(files)
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_files_post: #{e}"
end
```

#### Using the invoice_v1_send_validate_files_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_v1_send_validate_files_post_with_http_info(files)

```ruby
begin
  # Validate an invoice by file
  data, status_code, headers = api_instance.invoice_v1_send_validate_files_post_with_http_info(files)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_files_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files** | **Array&lt;File&gt;** |  |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## invoice_v1_send_validate_json_post

> invoice_v1_send_validate_json_post(fattura_ordinaria)

Validate an invoice by json

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
fattura_ordinaria = Invoice_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 

begin
  # Validate an invoice by json
  api_instance.invoice_v1_send_validate_json_post(fattura_ordinaria)
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_json_post: #{e}"
end
```

#### Using the invoice_v1_send_validate_json_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_v1_send_validate_json_post_with_http_info(fattura_ordinaria)

```ruby
begin
  # Validate an invoice by json
  data, status_code, headers = api_instance.invoice_v1_send_validate_json_post_with_http_info(fattura_ordinaria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_json_post_with_http_info: #{e}"
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


## invoice_v1_send_validate_post

> invoice_v1_send_validate_post(model_send)

Validate an invoice

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
model_send = Invoice_Sdk::ModelSend.new # ModelSend | 

begin
  # Validate an invoice
  api_instance.invoice_v1_send_validate_post(model_send)
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_post: #{e}"
end
```

#### Using the invoice_v1_send_validate_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_v1_send_validate_post_with_http_info(model_send)

```ruby
begin
  # Validate an invoice
  data, status_code, headers = api_instance.invoice_v1_send_validate_post_with_http_info(model_send)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_post_with_http_info: #{e}"
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


## invoice_v1_send_validate_xml_post

> invoice_v1_send_validate_xml_post

Validate an invoice by xml

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new

begin
  # Validate an invoice by xml
  api_instance.invoice_v1_send_validate_xml_post
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_xml_post: #{e}"
end
```

#### Using the invoice_v1_send_validate_xml_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> invoice_v1_send_validate_xml_post_with_http_info

```ruby
begin
  # Validate an invoice by xml
  data, status_code, headers = api_instance.invoice_v1_send_validate_xml_post_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_validate_xml_post_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## invoice_v1_send_xml_post

> <ModelSend> invoice_v1_send_xml_post(fattura_ordinaria, opts)

Add an invoice by xml

Send invoices are the invoices that are sent to the SDI.

### Examples

```ruby
require 'time'
require 'invoicetronic_invoice_sdk'
# setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = Invoice_Sdk::SendApi.new
fattura_ordinaria = Invoice_Sdk::FatturaOrdinaria.new # FatturaOrdinaria | 
opts = {
  validate: true # Boolean | Validate the document first, and reject it on failure.
}

begin
  # Add an invoice by xml
  result = api_instance.invoice_v1_send_xml_post(fattura_ordinaria, opts)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_xml_post: #{e}"
end
```

#### Using the invoice_v1_send_xml_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> invoice_v1_send_xml_post_with_http_info(fattura_ordinaria, opts)

```ruby
begin
  # Add an invoice by xml
  data, status_code, headers = api_instance.invoice_v1_send_xml_post_with_http_info(fattura_ordinaria, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoice_Sdk::ApiError => e
  puts "Error when calling SendApi->invoice_v1_send_xml_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fattura_ordinaria** | [**FatturaOrdinaria**](FatturaOrdinaria.md) |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/xml
- **Accept**: application/json

