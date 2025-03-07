=begin
#Invoicetronic API

#The [Invoicetronic API][2] is a RESTful service that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. It provides advanced features as encryption at rest, multi-language pre-flight invoice validation, multiple upload formats, webhooks, event logging, client SDKs, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Invoicetronic_Sdk::FatturaOrdinaria
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Invoicetronic_Sdk::FatturaOrdinaria do
  let(:instance) { Invoicetronic_Sdk::FatturaOrdinaria.new }

  describe 'test an instance of FatturaOrdinaria' do
    it 'should create an instance of FatturaOrdinaria' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Invoicetronic_Sdk::FatturaOrdinaria)
    end
  end

  describe 'test attribute "sistema_emittente"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "fattura_elettronica_header"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "fattura_elettronica_body"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
