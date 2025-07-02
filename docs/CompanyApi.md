# Invoicetronic_Sdk::CompanyApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**company_get**](CompanyApi.md#company_get) | **GET** /company | List companies |
| [**company_id_delete**](CompanyApi.md#company_id_delete) | **DELETE** /company/{id} | Delete a company |
| [**company_id_get**](CompanyApi.md#company_id_get) | **GET** /company/{id} | Get a company by id |
| [**company_post**](CompanyApi.md#company_post) | **POST** /company | Add a company |
| [**company_put**](CompanyApi.md#company_put) | **PUT** /company | Update a company |


## company_get

> <Array<Company>> company_get(opts)

List companies

Companies are the entities that send and receive invoices. As you send invoices, companies are added as needed (company details are extrapolated). **You can only receive invoices for existing companies, so ensure they exist**.

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

api_instance = Invoicetronic_Sdk::CompanyApi.new
opts = {
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example' # String | Sort by field. Prefix with '-' for descending order.
}

begin
  # List companies
  result = api_instance.company_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_get: #{e}"
end
```

#### Using the company_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Company>>, Integer, Hash)> company_get_with_http_info(opts)

```ruby
begin
  # List companies
  data, status_code, headers = api_instance.company_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Company>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |

### Return type

[**Array&lt;Company&gt;**](Company.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## company_id_delete

> <Company> company_id_delete(id)

Delete a company

Companies are the entities that send and receive invoices. As you send invoices, companies are added as needed (company details are extrapolated). **You can only receive invoices for existing companies, so ensure they exist**.

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

api_instance = Invoicetronic_Sdk::CompanyApi.new
id = 56 # Integer | Item id

begin
  # Delete a company
  result = api_instance.company_id_delete(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_id_delete: #{e}"
end
```

#### Using the company_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> company_id_delete_with_http_info(id)

```ruby
begin
  # Delete a company
  data, status_code, headers = api_instance.company_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**Company**](Company.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## company_id_get

> <Company> company_id_get(id)

Get a company by id

Companies are the entities that send and receive invoices. As you send invoices, companies are added as needed (company details are extrapolated). **You can only receive invoices for existing companies, so ensure they exist**.

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

api_instance = Invoicetronic_Sdk::CompanyApi.new
id = 56 # Integer | Item id

begin
  # Get a company by id
  result = api_instance.company_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_id_get: #{e}"
end
```

#### Using the company_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> company_id_get_with_http_info(id)

```ruby
begin
  # Get a company by id
  data, status_code, headers = api_instance.company_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**Company**](Company.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## company_post

> <Company> company_post(company)

Add a company

Companies are the entities that send and receive invoices. As you send invoices, companies are added as needed (company details are extrapolated). **You can only receive invoices for existing companies, so ensure they exist**.

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

api_instance = Invoicetronic_Sdk::CompanyApi.new
company = Invoicetronic_Sdk::Company.new({vat: 'IT01234567891', fiscal_code: 'RSSMRA70A01F205V', name: 'Mario Rossi Srl'}) # Company | 

begin
  # Add a company
  result = api_instance.company_post(company)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_post: #{e}"
end
```

#### Using the company_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> company_post_with_http_info(company)

```ruby
begin
  # Add a company
  data, status_code, headers = api_instance.company_post_with_http_info(company)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company** | [**Company**](Company.md) |  |  |

### Return type

[**Company**](Company.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## company_put

> <Company> company_put(company)

Update a company

Companies are the entities that send and receive invoices. As you send invoices, companies are added as needed (company details are extrapolated). **You can only receive invoices for existing companies, so ensure they exist**.

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

api_instance = Invoicetronic_Sdk::CompanyApi.new
company = Invoicetronic_Sdk::Company.new({vat: 'IT01234567891', fiscal_code: 'RSSMRA70A01F205V', name: 'Mario Rossi Srl'}) # Company | 

begin
  # Update a company
  result = api_instance.company_put(company)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_put: #{e}"
end
```

#### Using the company_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Company>, Integer, Hash)> company_put_with_http_info(company)

```ruby
begin
  # Update a company
  data, status_code, headers = api_instance.company_put_with_http_info(company)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Company>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling CompanyApi->company_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company** | [**Company**](Company.md) |  |  |

### Return type

[**Company**](Company.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

