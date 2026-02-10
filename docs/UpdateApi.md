# Invoicetronic_Sdk::UpdateApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_get**](UpdateApi.md#update_get) | **GET** /update | List updates |
| [**update_id_get**](UpdateApi.md#update_id_get) | **GET** /update/{id} | Get an update by id |


## update_get

> <Array<Update>> update_get(opts)

List updates

Retrieve a paginated list of updates. Results can be filtered by various criteria such as company, send item, SDI state, and date ranges.  **Updates** are status notifications from Italy's SDI (Sistema di Interscambio) about invoices you sent. Multiple updates can exist for the same send item as the invoice progresses through the SDI workflow.  The `state` field is the most important property and can have the following values:  | Value | Name | Description | |-------|------|-------------| | 2 | `Inviato` | Sent to the SDI. | | 5 | `Consegnato` | Delivered to the recipient. | | 6 | `NonConsegnato` | Not delivered to the recipient. Only relevant for public administration entities. | | 7 | `Scartato` | Rejected by the SDI. | | 8 | `AccettatoDalDestinatario` | Accepted by the recipient. Only relevant for public administration entities. | | 9 | `RifiutatoDalDestinatario` | Rejected by the recipient. Only relevant for public administration entities. | | 10 | `ImpossibilitaDiRecapito` | Available on the recipient's tax drawer, but it was not possible to deliver it to the recipient's reception system. | | 11 | `DecorrenzaTermini` | A public administration entity has not responded for more than 15 days. The document is considered delivered. | | 12 | `AttestazioneTrasmissioneFattura` | A public administration entity has received the document, but has not yet processed it. |  **Important:** Always monitor the state of your sent invoices. A state of `Inviato` only means the invoice has been submitted to SDI, not that it has been delivered. A state like `Scartato` indicates that the invoice was **not** successfully delivered and may require corrective action, such as fixing validation errors and resubmitting. In that case, `description` contains the reason for the rejection.

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

api_instance = Invoicetronic_Sdk::UpdateApi.new
opts = {
  company_id: 56, # Integer | Company id
  identifier: 'identifier_example', # String | SDI identifier.
  prestatore: 'prestatore_example', # String | Vat number or fiscal code.
  unread: true, # Boolean | Unread items only.
  send_id: 56, # Integer | Send item's id.
  state: 'Inviato', # String | SDI state
  last_update_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  last_update_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_sent_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  date_sent_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example' # String | Sort by field. Prefix with '-' for descending order.
}

begin
  # List updates
  result = api_instance.update_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling UpdateApi->update_get: #{e}"
end
```

#### Using the update_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Update>>, Integer, Hash)> update_get_with_http_info(opts)

```ruby
begin
  # List updates
  data, status_code, headers = api_instance.update_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Update>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling UpdateApi->update_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | Company id | [optional] |
| **identifier** | **String** | SDI identifier. | [optional] |
| **prestatore** | **String** | Vat number or fiscal code. | [optional] |
| **unread** | **Boolean** | Unread items only. | [optional] |
| **send_id** | **Integer** | Send item&#39;s id. | [optional] |
| **state** | **String** | SDI state | [optional] |
| **last_update_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **last_update_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_sent_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **date_sent_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional][default to &#39;last_update&#39;] |

### Return type

[**Array&lt;Update&gt;**](Update.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_id_get

> <Update> update_id_get(id)

Get an update by id

Retrieve an update by its internal id.  **Updates** are status notifications from Italy's SDI (Sistema di Interscambio) about invoices you sent. Multiple updates can exist for the same send item as the invoice progresses through the SDI workflow.  The `state` field is the most important property and can have the following values:  | Value | Name | Description | |-------|------|-------------| | 2 | `Inviato` | Sent to the SDI. | | 5 | `Consegnato` | Delivered to the recipient. | | 6 | `NonConsegnato` | Not delivered to the recipient. Only relevant for public administration entities. | | 7 | `Scartato` | Rejected by the SDI. | | 8 | `AccettatoDalDestinatario` | Accepted by the recipient. Only relevant for public administration entities. | | 9 | `RifiutatoDalDestinatario` | Rejected by the recipient. Only relevant for public administration entities. | | 10 | `ImpossibilitaDiRecapito` | Available on the recipient's tax drawer, but it was not possible to deliver it to the recipient's reception system. | | 11 | `DecorrenzaTermini` | A public administration entity has not responded for more than 15 days. The document is considered delivered. | | 12 | `AttestazioneTrasmissioneFattura` | A public administration entity has received the document, but has not yet processed it. |  **Important:** Always monitor the state of your sent invoices. A state of `Inviato` only means the invoice has been submitted to SDI, not that it has been delivered. A state like `Scartato` indicates that the invoice was **not** successfully delivered and may require corrective action, such as fixing validation errors and resubmitting. In that case, `description` contains the reason for the rejection.

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

api_instance = Invoicetronic_Sdk::UpdateApi.new
id = 56 # Integer | Item id

begin
  # Get an update by id
  result = api_instance.update_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling UpdateApi->update_id_get: #{e}"
end
```

#### Using the update_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Update>, Integer, Hash)> update_id_get_with_http_info(id)

```ruby
begin
  # Get an update by id
  data, status_code, headers = api_instance.update_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Update>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling UpdateApi->update_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**Update**](Update.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

