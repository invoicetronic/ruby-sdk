# Invoicetronic_Sdk::SendApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_file_post**](SendApi.md#send_file_post) | **POST** /send/file | Add an invoice by file |
| [**send_get**](SendApi.md#send_get) | **GET** /send | List invoices |
| [**send_id_get**](SendApi.md#send_id_get) | **GET** /send/{id} | Get a invoice by id |
| [**send_id_payload_get**](SendApi.md#send_id_payload_get) | **GET** /send/{id}/payload | Get a send invoice payload by id |
| [**send_identifier_get**](SendApi.md#send_identifier_get) | **GET** /send/{identifier} | Get a invoice by identifier |
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

Add a new invoice by uploading a file. Supported formats are XML (FatturaPA) and P7M (signed). The invoice will be signed (if requested), validated (if requested), and queued for delivery to SDI. Status updates from SDI will be available in the `update` endpoint.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  You can also upload invoices via the [Dashboard](https://dashboard.invoicetronic.com).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## send_get

> <Array<ModelSend>> send_get(opts)

List invoices

Retrieve a paginated list of send invoices. Results can be filtered by various criteria such as company, date ranges, document number, and free-text search (`q`). Returns invoice metadata; set `include_payload` to true to include the full invoice content.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

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
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example', # String | Sort by field. Prefix with '-' for descending order.
  q: 'q_example' # String | Full-text search across committente, prestatore, identifier, and file name.
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
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |
| **q** | **String** | Full-text search across committente, prestatore, identifier, and file name. | [optional] |

### Return type

[**Array&lt;ModelSend&gt;**](ModelSend.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_id_get

> <ModelSend> send_id_get(id, opts)

Get a invoice by id

Retrieve a send invoice by its internal id. The `id` is unique and assigned by the system when the invoice is created. Returns invoice metadata; set `include_payload` to true to include the full invoice content.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
id = 56 # Integer | Item id
opts = {
  include_payload: true # Boolean | Include payload in the response. Defaults to false.
}

begin
  # Get a invoice by id
  result = api_instance.send_id_get(id, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_id_get: #{e}"
end
```

#### Using the send_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_id_get_with_http_info(id, opts)

```ruby
begin
  # Get a invoice by id
  data, status_code, headers = api_instance.send_id_get_with_http_info(id, opts)
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
| **include_payload** | **Boolean** | Include payload in the response. Defaults to false. | [optional][default to false] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_id_payload_get

> send_id_payload_get(id)

Get a send invoice payload by id

Retrieve only the payload of a send invoice, without the full invoice metadata. This is useful when you already have the invoice metadata and only need the XML content.  The response is a `text/plain` string, identical to the `payload` field returned by the standard GET endpoint with `include_payload=true`. Depending on how the invoice was originally submitted, the payload may be Base64-encoded or plain XML. 

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
id = 56 # Integer | Item id

begin
  # Get a send invoice payload by id
  api_instance.send_id_payload_get(id)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_id_payload_get: #{e}"
end
```

#### Using the send_id_payload_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_id_payload_get_with_http_info(id)

```ruby
begin
  # Get a send invoice payload by id
  data, status_code, headers = api_instance.send_id_payload_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_id_payload_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## send_identifier_get

> <ModelSend> send_identifier_get(identifier, opts)

Get a invoice by identifier

Retrieve a send invoice by its SDI identifier. The `identifier` is assigned by the SDI and becomes available after the invoice has been accepted. Returns invoice metadata; set `include_payload` to true to include the full invoice content.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
identifier = 'identifier_example' # String | 
opts = {
  include_payload: true # Boolean | Include payload in the response. Defaults to false.
}

begin
  # Get a invoice by identifier
  result = api_instance.send_identifier_get(identifier, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_identifier_get: #{e}"
end
```

#### Using the send_identifier_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_identifier_get_with_http_info(identifier, opts)

```ruby
begin
  # Get a invoice by identifier
  data, status_code, headers = api_instance.send_identifier_get_with_http_info(identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelSend>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_identifier_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** |  |  |
| **include_payload** | **Boolean** | Include payload in the response. Defaults to false. | [optional][default to false] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_json_post

> <ModelSend> send_json_post(body, opts)

Add an invoice by json

Add a new invoice using a FatturaPA JSON representation. The invoice will be signed (if requested), validated (if requested), and queued for delivery to SDI. Status updates from SDI will be available in the `update` endpoint.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  You can also upload invoices via the [Dashboard](https://dashboard.invoicetronic.com).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
body = { ... } # Object | 
opts = {
  validate: true, # Boolean | Validate the document first, and reject it on failure.
  signature: 'None' # String | Whether to digitally sign the document.
}

begin
  # Add an invoice by json
  result = api_instance.send_json_post(body, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_json_post: #{e}"
end
```

#### Using the send_json_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_json_post_with_http_info(body, opts)

```ruby
begin
  # Add an invoice by json
  data, status_code, headers = api_instance.send_json_post_with_http_info(body, opts)
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
| **body** | **Object** |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |
| **signature** | **String** | Whether to digitally sign the document. | [optional][default to &#39;Auto&#39;] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_post

> <ModelSend> send_post(model_send, opts)

Add an invoice

Add a new invoice using a structured Send object. The invoice will be signed (if requested), validated (if requested), and queued for delivery to SDI. Status updates from SDI will be available in the `update` endpoint.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  You can also upload invoices via the [Dashboard](https://dashboard.invoicetronic.com).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
model_send = Invoicetronic_Sdk::ModelSend.new({payload: 'payload_example'}) # ModelSend | 
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_validate_file_post

> send_validate_file_post(file)

Validate an invoice file

Validate an invoice file without sending it to SDI. Supported formats are XML (FatturaPA) and P7M (signed). Use this to check for errors before actual submission. Returns validation results with any errors found.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## send_validate_json_post

> send_validate_json_post(body)

Validate an invoice by json

Validate a JSON invoice without sending it to SDI. Use this to check for errors before actual submission. Returns validation results with any errors found.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
body = { ... } # Object | 

begin
  # Validate an invoice by json
  api_instance.send_validate_json_post(body)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_json_post: #{e}"
end
```

#### Using the send_validate_json_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_validate_json_post_with_http_info(body)

```ruby
begin
  # Validate an invoice by json
  data, status_code, headers = api_instance.send_validate_json_post_with_http_info(body)
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
| **body** | **Object** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_validate_post

> send_validate_post(model_send)

Validate an invoice

Validate an invoice without sending it to SDI. Use this to check for errors before actual submission. Returns validation results with any errors found.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
model_send = Invoicetronic_Sdk::ModelSend.new({payload: 'payload_example'}) # ModelSend | 

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_validate_xml_post

> send_validate_xml_post(body)

Validate an invoice by xml

Validate an XML invoice document without sending it to SDI. Use this to check for errors before actual submission. Returns validation results with any errors found.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
body = { ... } # Object | 

begin
  # Validate an invoice by xml
  api_instance.send_validate_xml_post(body)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_validate_xml_post: #{e}"
end
```

#### Using the send_validate_xml_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_validate_xml_post_with_http_info(body)

```ruby
begin
  # Validate an invoice by xml
  data, status_code, headers = api_instance.send_validate_xml_post_with_http_info(body)
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
| **body** | **Object** |  |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/xml
- **Accept**: application/json


## send_xml_post

> <ModelSend> send_xml_post(body, opts)

Add an invoice by xml

Add a new invoice using a raw XML document in FatturaPA format. The invoice will be signed (if requested), validated (if requested), and queued for delivery to SDI. Status updates from SDI will be available in the `update` endpoint.  **Send** invoices are outbound sales invoices transmitted to customers through Italy's SDI (Sistema di Interscambio). Preserved for two years in the live environment and 15 days in the [Sandbox](https://invoicetronic.com/en/docs/sandbox/).  You can also upload invoices via the [Dashboard](https://dashboard.invoicetronic.com).

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::SendApi.new
body = { ... } # Object | 
opts = {
  validate: true, # Boolean | Validate the document first, and reject it on failure.
  signature: 'None' # String | Whether to digitally sign the document.
}

begin
  # Add an invoice by xml
  result = api_instance.send_xml_post(body, opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling SendApi->send_xml_post: #{e}"
end
```

#### Using the send_xml_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelSend>, Integer, Hash)> send_xml_post_with_http_info(body, opts)

```ruby
begin
  # Add an invoice by xml
  data, status_code, headers = api_instance.send_xml_post_with_http_info(body, opts)
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
| **body** | **Object** |  |  |
| **validate** | **Boolean** | Validate the document first, and reject it on failure. | [optional][default to false] |
| **signature** | **String** | Whether to digitally sign the document. | [optional][default to &#39;Auto&#39;] |

### Return type

[**ModelSend**](ModelSend.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/xml
- **Accept**: application/json

