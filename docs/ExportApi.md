# Invoicetronic_Sdk::ExportApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_get**](ExportApi.md#export_get) | **GET** /export | Export invoices as a ZIP archive |


## export_get

> export_get(opts)

Export invoices as a ZIP archive

Export invoices as a ZIP archive of FatturaPA XML files, suitable for import into accounting software (TeamSystem, Zucchetti, etc.).  **Sent invoices** are only included when they have reached a definitive state (e.g., `Consegnato` for private recipients, `AccettatoDalDestinatario`, `DecorrenzaTermini`, etc.). Invoices still being processed by SDI are excluded.  **Received invoices** are always included. Unread invoices are automatically marked as read and counted as operations.  ### Period filters  You can filter by period using either: - `year` + `month` (e.g., `year=2026&month=3` for March 2026) - `year` + `quarter` (e.g., `year=2026&quarter=1` for Q1 Jan-Mar) - `document_date_from` / `document_date_to` for a custom date range  These options are mutually exclusive. The `year` parameter alone is not valid and requires either `month` or `quarter`.  ### Response  Returns `200` with a ZIP archive, or `204 No Content` if no invoices match the given filters. Files in the archive are organized by company VAT number (`{vat}/send/`, `{vat}/receive/`).  ### Rate limiting  This endpoint has a dedicated rate limit: only one export request per user can be processed at a time. Concurrent requests will receive a `429 Too Many Requests` response.

### Examples

```ruby
require 'time'
require 'invoicetronic_sdk'

api_instance = Invoicetronic_Sdk::ExportApi.new
opts = {
  type: 'type_example', # String | 
  company_id: 56, # Integer | Company id
  year: 56, # Integer | 
  month: 56, # Integer | 
  quarter: 56, # Integer | 
  document_date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
  document_date_to: Time.parse('2013-10-20T19:20:30+01:00') # Time | UTC ISO 8601 (2024-11-29T12:34:56Z)
}

begin
  # Export invoices as a ZIP archive
  api_instance.export_get(opts)
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ExportApi->export_get: #{e}"
end
```

#### Using the export_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> export_get_with_http_info(opts)

```ruby
begin
  # Export invoices as a ZIP archive
  data, status_code, headers = api_instance.export_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling ExportApi->export_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **company_id** | **Integer** | Company id | [optional] |
| **year** | **Integer** |  | [optional] |
| **month** | **Integer** |  | [optional] |
| **quarter** | **Integer** |  | [optional] |
| **document_date_from** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |
| **document_date_to** | **Time** | UTC ISO 8601 (2024-11-29T12:34:56Z) | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json

