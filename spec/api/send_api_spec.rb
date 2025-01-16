=begin
#Italian eInvoice API

#The Italian eInvoice API is a RESTful API that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. The API also provides advanced features as encryption at rest, invoice validation, multiple upload formats, webhooks, event logging, client SDKs for commonly used languages, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1.0.0
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Invoice_Sdk::SendApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SendApi' do
  before do
    # run before each test
    @api_instance = Invoice_Sdk::SendApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SendApi' do
    it 'should create an instance of SendApi' do
      expect(@api_instance).to be_instance_of(Invoice_Sdk::SendApi)
    end
  end

  # unit tests for invoice_v1_send_files_post
  # Add an invoice by file
  # Send invoices are the invoices that are sent to the SDI.
  # @param files 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'invoice_v1_send_files_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_get
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
  # @option opts [Integer] :page Page number. Defaults to 1.
  # @option opts [Integer] :page_size Items per page. Defaults to 50. Cannot be greater than 200.
  # @return [Array<ModelSend>]
  describe 'invoice_v1_send_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_id_get
  # Get a invoice by id
  # Send invoices are the invoices that are sent to the SDI.
  # @param id Item id
  # @param [Hash] opts the optional parameters
  # @return [ModelSend]
  describe 'invoice_v1_send_id_get test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_json_post
  # Add an invoice by json
  # Send invoices are the invoices that are sent to the SDI.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'invoice_v1_send_json_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_post
  # Add an invoice
  # Send invoices are the invoices that are sent to the SDI.
  # @param model_send 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'invoice_v1_send_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_validate_files_post
  # Validate an invoice by file
  # Send invoices are the invoices that are sent to the SDI.
  # @param files 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'invoice_v1_send_validate_files_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_validate_json_post
  # Validate an invoice by json
  # Send invoices are the invoices that are sent to the SDI.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'invoice_v1_send_validate_json_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_validate_post
  # Validate an invoice
  # Send invoices are the invoices that are sent to the SDI.
  # @param model_send 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'invoice_v1_send_validate_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_validate_xml_post
  # Validate an invoice by xml
  # Send invoices are the invoices that are sent to the SDI.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'invoice_v1_send_validate_xml_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for invoice_v1_send_xml_post
  # Add an invoice by xml
  # Send invoices are the invoices that are sent to the SDI.
  # @param fattura_ordinaria 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :validate Validate the document first, and reject it on failure.
  # @option opts [String] :signature Whether to digitally sign the document.
  # @return [ModelSend]
  describe 'invoice_v1_send_xml_post test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
