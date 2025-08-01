=begin
#Invoicetronic API

#The [Invoicetronic API][2] is a RESTful service that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. It provides advanced features as encryption at rest, multi-language pre-flight invoice validation, multiple upload formats, webhooks, event logging, client SDKs, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1
Contact: info@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.14.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Invoicetronic_Sdk::SendApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SendApi' do
  before do
    # run before each test
    @api_instance = Invoicetronic_Sdk::SendApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SendApi' do
    it 'should create an instance of SendApi' do
      expect(@api_instance).to be_instance_of(Invoicetronic_Sdk::SendApi)
    end
  end

  # unit tests for send_file_post
  # Add an invoice by file
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param file 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'send_file_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_get
  # List invoices
  # test **markdown**.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :company_id Company id
  # @option opts [String] :identifier SDI identifier.
  # @option opts [String] :committente Vat number or fiscal code.
  # @option opts [String] :prestatore Vat number or fiscal code.
  # @option opts [String] :file_name File name.
  # @option opts [Time] :last_update_from UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Time] :last_update_to UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Time] :date_sent_from UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Time] :date_sent_to UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Time] :document_date_from UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [Time] :document_date_to UTC ISO 8601 (2024-11-29T12:34:56Z)
  # @option opts [String] :document_number Document number.
  # @option opts [Boolean] :include_payload Include payload in the response. Defaults to false.
  # @option opts [Integer] :page Page number.
  # @option opts [Integer] :page_size Items per page. Cannot be greater than 200.
  # @option opts [String] :sort Sort by field. Prefix with &#39;-&#39; for descending order.
  # @return [Array<ModelSend>]
  describe 'send_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_id_get
  # Get a invoice by id
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param id Item id
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_payload Include payload in the response. Defaults to false.
  # @return [ModelSend]
  describe 'send_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_identifier_get
  # Get a invoice by identifier
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param identifier 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_payload Include payload in the response. Defaults to false.
  # @return [ModelSend]
  describe 'send_identifier_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_json_post
  # Add an invoice by json
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'send_json_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_post
  # Add an invoice
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param model_send 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'send_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_validate_file_post
  # Validate an invoice file
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param file 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_validate_file_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_validate_json_post
  # Validate an invoice by json
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_validate_json_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_validate_post
  # Validate an invoice
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param model_send 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_validate_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_validate_xml_post
  # Validate an invoice by xml
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_validate_xml_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_xml_post
  # Add an invoice by xml
  # Send invoices are the invoices that are sent to the SDI. They are preserved for two years in the live environment and 15 days in the Sandbox.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'send_xml_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
