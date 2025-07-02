# Invoicetronic_Sdk::WebhookApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_get**](WebhookApi.md#webhook_get) | **GET** /webhook | List webhooks |
| [**webhook_id_delete**](WebhookApi.md#webhook_id_delete) | **DELETE** /webhook/{id} | Delete a webhook by id |
| [**webhook_id_get**](WebhookApi.md#webhook_id_get) | **GET** /webhook/{id} | Get a webhook by id |
| [**webhook_post**](WebhookApi.md#webhook_post) | **POST** /webhook | Add a webhook |
| [**webhook_put**](WebhookApi.md#webhook_put) | **PUT** /webhook | Update a webhook |
| [**webhookhistory_get**](WebhookApi.md#webhookhistory_get) | **GET** /webhookhistory | List webhook history items |
| [**webhookhistory_id_get**](WebhookApi.md#webhookhistory_id_get) | **GET** /webhookhistory/{id} | Get a webhook history item by id |


## webhook_get

> <Array<WebHook>> webhook_get(opts)

List webhooks

Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
opts = {
  company_id: 56, # Integer | Company id
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example', # String | Sort by field. Prefix with '-' for descending order.
  description: 'description_example', # String | 
  enabled: true, # Boolean | 
  events: 'events_example', # String | 
  url: 'url_example' # String | 
}

begin
  # List webhooks
  result = api_instance.webhook_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_get: #{e}"
end
```

#### Using the webhook_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebHook>>, Integer, Hash)> webhook_get_with_http_info(opts)

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.webhook_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebHook>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_id** | **Integer** | Company id | [optional] |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** |  | [optional] |
| **events** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

### Return type

[**Array&lt;WebHook&gt;**](WebHook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_id_delete

> <WebHook> webhook_id_delete(id)

Delete a webhook by id

Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
id = 56 # Integer | Item id

begin
  # Delete a webhook by id
  result = api_instance.webhook_id_delete(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_id_delete: #{e}"
end
```

#### Using the webhook_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebHook>, Integer, Hash)> webhook_id_delete_with_http_info(id)

```ruby
begin
  # Delete a webhook by id
  data, status_code, headers = api_instance.webhook_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebHook>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**WebHook**](WebHook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_id_get

> <WebHook> webhook_id_get(id)

Get a webhook by id

Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
id = 56 # Integer | Item id

begin
  # Get a webhook by id
  result = api_instance.webhook_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_id_get: #{e}"
end
```

#### Using the webhook_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebHook>, Integer, Hash)> webhook_id_get_with_http_info(id)

```ruby
begin
  # Get a webhook by id
  data, status_code, headers = api_instance.webhook_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebHook>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**WebHook**](WebHook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_post

> <WebHook> webhook_post(web_hook)

Add a webhook

Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
web_hook = Invoicetronic_Sdk::WebHook.new # WebHook | 

begin
  # Add a webhook
  result = api_instance.webhook_post(web_hook)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_post: #{e}"
end
```

#### Using the webhook_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebHook>, Integer, Hash)> webhook_post_with_http_info(web_hook)

```ruby
begin
  # Add a webhook
  data, status_code, headers = api_instance.webhook_post_with_http_info(web_hook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebHook>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_hook** | [**WebHook**](WebHook.md) |  |  |

### Return type

[**WebHook**](WebHook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhook_put

> <WebHook> webhook_put(web_hook)

Update a webhook

Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
web_hook = Invoicetronic_Sdk::WebHook.new # WebHook | 

begin
  # Update a webhook
  result = api_instance.webhook_put(web_hook)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_put: #{e}"
end
```

#### Using the webhook_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebHook>, Integer, Hash)> webhook_put_with_http_info(web_hook)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.webhook_put_with_http_info(web_hook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebHook>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhook_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **web_hook** | [**WebHook**](WebHook.md) |  |  |

### Return type

[**WebHook**](WebHook.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhookhistory_get

> <Array<WebHookHistory>> webhookhistory_get(opts)

List webhook history items

Webhook history items are stored in the database and can be accessed via the API. They are preserved for 15 in both the live and sandbox environments.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
opts = {
  page: 56, # Integer | Page number.
  page_size: 56, # Integer | Items per page. Cannot be greater than 200.
  sort: 'sort_example', # String | Sort by field. Prefix with '-' for descending order.
  webhook_id: 56 # Integer | WebHook id
}

begin
  # List webhook history items
  result = api_instance.webhookhistory_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhookhistory_get: #{e}"
end
```

#### Using the webhookhistory_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebHookHistory>>, Integer, Hash)> webhookhistory_get_with_http_info(opts)

```ruby
begin
  # List webhook history items
  data, status_code, headers = api_instance.webhookhistory_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebHookHistory>>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhookhistory_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. | [optional][default to 1] |
| **page_size** | **Integer** | Items per page. Cannot be greater than 200. | [optional][default to 100] |
| **sort** | **String** | Sort by field. Prefix with &#39;-&#39; for descending order. | [optional] |
| **webhook_id** | **Integer** | WebHook id | [optional] |

### Return type

[**Array&lt;WebHookHistory&gt;**](WebHookHistory.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhookhistory_id_get

> <WebHookHistory> webhookhistory_id_get(id)

Get a webhook history item by id

Webhook history items are stored in the database and can be accessed via the API. They are preserved for 15 in both the live and sandbox environments.

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

api_instance = Invoicetronic_Sdk::WebhookApi.new
id = 56 # Integer | Item id

begin
  # Get a webhook history item by id
  result = api_instance.webhookhistory_id_get(id)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhookhistory_id_get: #{e}"
end
```

#### Using the webhookhistory_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebHookHistory>, Integer, Hash)> webhookhistory_id_get_with_http_info(id)

```ruby
begin
  # Get a webhook history item by id
  data, status_code, headers = api_instance.webhookhistory_id_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebHookHistory>
rescue Invoicetronic_Sdk::ApiError => e
  puts "Error when calling WebhookApi->webhookhistory_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Item id |  |

### Return type

[**WebHookHistory**](WebHookHistory.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

