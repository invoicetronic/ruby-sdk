# -*- encoding: utf-8 -*-

=begin
#Italian eInvoice API

#The Italian eInvoice API is a RESTful API that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. The API also provides advanced features as encryption at rest, invoice validation, multiple upload formats, webhooks, event logging, client SDKs for commonly used languages, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1.0.0
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "invoicetronic_invoice_sdk/version"

Gem::Specification.new do |s|
  s.name        = "invoicetronic_invoice_sdk"
  s.version     = Invoice_Sdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Invoicetronic API Team"]
  s.email       = ["info@invoicetronic.com"]
  s.homepage    = "https://github.com/invoicetronic/invoice-ruby-sdk"
  s.summary     = "Ruby SDK for the Italian eInvoice API"
  s.description = "Ruby SDK for the Italian eInvoice API"
  s.license     = "MIT"
  s.required_ruby_version = "2.4"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
