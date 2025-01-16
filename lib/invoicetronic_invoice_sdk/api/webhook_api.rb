=begin
#Italian eInvoice API

#The Italian eInvoice API is a RESTful API that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. The API also provides advanced features as encryption at rest, invoice validation, multiple upload formats, webhooks, event logging, client SDKs for commonly used languages, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1.0.0
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'cgi'

module Invoice_Sdk
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List webhooks
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Defaults to 1. (default to 1)
    # @option opts [Integer] :page_size Items per page. Defaults to 50. Cannot be greater than 200. (default to 100)
    # @return [Array<WebHook>]
    def invoice_v1_webhook_get(opts = {})
      data, _status_code, _headers = invoice_v1_webhook_get_with_http_info(opts)
      data
    end

    # List webhooks
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Defaults to 1. (default to 1)
    # @option opts [Integer] :page_size Items per page. Defaults to 50. Cannot be greater than 200. (default to 100)
    # @return [Array<(Array<WebHook>, Integer, Hash)>] Array<WebHook> data, response status code and response headers
    def invoice_v1_webhook_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhook_get ...'
      end
      # resource path
      local_var_path = '/invoice/v1/webhook'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<WebHook>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhook_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhook_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a webhook by id
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param id [Integer] Item id
    # @param [Hash] opts the optional parameters
    # @return [WebHook]
    def invoice_v1_webhook_id_delete(id, opts = {})
      data, _status_code, _headers = invoice_v1_webhook_id_delete_with_http_info(id, opts)
      data
    end

    # Delete a webhook by id
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param id [Integer] Item id
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebHook, Integer, Hash)>] WebHook data, response status code and response headers
    def invoice_v1_webhook_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhook_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.invoice_v1_webhook_id_delete"
      end
      # resource path
      local_var_path = '/invoice/v1/webhook/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebHook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhook_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhook_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook by id
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param id [Integer] Item id
    # @param [Hash] opts the optional parameters
    # @return [WebHook]
    def invoice_v1_webhook_id_get(id, opts = {})
      data, _status_code, _headers = invoice_v1_webhook_id_get_with_http_info(id, opts)
      data
    end

    # Get a webhook by id
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param id [Integer] Item id
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebHook, Integer, Hash)>] WebHook data, response status code and response headers
    def invoice_v1_webhook_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhook_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.invoice_v1_webhook_id_get"
      end
      # resource path
      local_var_path = '/invoice/v1/webhook/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebHook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhook_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhook_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a webhook
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param web_hook [WebHook] 
    # @param [Hash] opts the optional parameters
    # @return [WebHook]
    def invoice_v1_webhook_post(web_hook, opts = {})
      data, _status_code, _headers = invoice_v1_webhook_post_with_http_info(web_hook, opts)
      data
    end

    # Add a webhook
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param web_hook [WebHook] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebHook, Integer, Hash)>] WebHook data, response status code and response headers
    def invoice_v1_webhook_post_with_http_info(web_hook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhook_post ...'
      end
      # verify the required parameter 'web_hook' is set
      if @api_client.config.client_side_validation && web_hook.nil?
        fail ArgumentError, "Missing the required parameter 'web_hook' when calling WebhookApi.invoice_v1_webhook_post"
      end
      # resource path
      local_var_path = '/invoice/v1/webhook'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(web_hook)

      # return_type
      return_type = opts[:debug_return_type] || 'WebHook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhook_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhook_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param web_hook [WebHook] 
    # @param [Hash] opts the optional parameters
    # @return [WebHook]
    def invoice_v1_webhook_put(web_hook, opts = {})
      data, _status_code, _headers = invoice_v1_webhook_put_with_http_info(web_hook, opts)
      data
    end

    # Update a webhook
    # Webhooks are used to notify external services about write events that occur in the API. You can subscribe to specific events and receive a notification when they occur.
    # @param web_hook [WebHook] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebHook, Integer, Hash)>] WebHook data, response status code and response headers
    def invoice_v1_webhook_put_with_http_info(web_hook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhook_put ...'
      end
      # verify the required parameter 'web_hook' is set
      if @api_client.config.client_side_validation && web_hook.nil?
        fail ArgumentError, "Missing the required parameter 'web_hook' when calling WebhookApi.invoice_v1_webhook_put"
      end
      # resource path
      local_var_path = '/invoice/v1/webhook'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(web_hook)

      # return_type
      return_type = opts[:debug_return_type] || 'WebHook'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhook_put",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhook_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List webhook history items
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Defaults to 1. (default to 1)
    # @option opts [Integer] :page_size Items per page. Defaults to 50. Cannot be greater than 200. (default to 100)
    # @return [Array<WebHookHistory>]
    def invoice_v1_webhookhistory_get(opts = {})
      data, _status_code, _headers = invoice_v1_webhookhistory_get_with_http_info(opts)
      data
    end

    # List webhook history items
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page number. Defaults to 1. (default to 1)
    # @option opts [Integer] :page_size Items per page. Defaults to 50. Cannot be greater than 200. (default to 100)
    # @return [Array<(Array<WebHookHistory>, Integer, Hash)>] Array<WebHookHistory> data, response status code and response headers
    def invoice_v1_webhookhistory_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhookhistory_get ...'
      end
      # resource path
      local_var_path = '/invoice/v1/webhookhistory'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<WebHookHistory>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhookhistory_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhookhistory_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a webhook history item by id
    # @param id [Integer] Item id
    # @param [Hash] opts the optional parameters
    # @return [WebHookHistory]
    def invoice_v1_webhookhistory_id_get(id, opts = {})
      data, _status_code, _headers = invoice_v1_webhookhistory_id_get_with_http_info(id, opts)
      data
    end

    # Get a webhook history item by id
    # @param id [Integer] Item id
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebHookHistory, Integer, Hash)>] WebHookHistory data, response status code and response headers
    def invoice_v1_webhookhistory_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.invoice_v1_webhookhistory_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookApi.invoice_v1_webhookhistory_id_get"
      end
      # resource path
      local_var_path = '/invoice/v1/webhookhistory/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebHookHistory'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Basic']

      new_options = opts.merge(
        :operation => :"WebhookApi.invoice_v1_webhookhistory_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#invoice_v1_webhookhistory_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
