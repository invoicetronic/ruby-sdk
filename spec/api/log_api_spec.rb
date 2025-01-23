=begin
#Italian eInvoice API

#The Italian eInvoice API is a RESTful API that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. The API also provides advanced features as encryption at rest, invoice validation, multiple upload formats, webhooks, event logging, client SDKs for commonly used languages, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1.0.0
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Invoice_Sdk::LogApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LogApi' do
  before do
    # run before each test
    @api_instance = Invoice_Sdk::LogApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogApi' do
    it 'should create an instance of LogApi' do
      expect(@api_instance).to be_instance_of(Invoice_Sdk::LogApi)
    end
  end

  # unit tests for invoice_v1_log_get
  # List events
  # Every API operation is logged and can be retrieved here.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :company_id Company id
  # @option opts [String] :endpoint 
  # @option opts [String] :method 
  # @option opts [Integer] :api_verion Api version
  # @option opts [Integer] :status_code Response status code
  # @option opts [Time] :date_created_from UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Time] :date_created_to UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Integer] :page Page number. Defaults to 1.
  # @option opts [Integer] :page_size Items per page. Defaults to 50. Cannot be greater than 200.
  # @return [Array<Event>]
  describe 'invoice_v1_log_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_log_id_get
  # Get an event by id
  # Every API operation is logged and can be retrieved here.
  # @param id Item id
  # @param [Hash] opts the optional parameters
  # @return [Event]
  describe 'invoice_v1_log_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
