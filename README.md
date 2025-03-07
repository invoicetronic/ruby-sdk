# Ruby SDK for the Italian eInvoice API

The [Invoicetronic API][2] is a RESTful service that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. It provides advanced features as encryption at rest, multi-language pre-flight invoice validation, multiple upload formats, webhooks, event logging, client SDKs, and CLI tools.

For more information, see  [Invoicetronic website][2]

[1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/
[2]: https://invoicetronic.com/

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1
- Package version: 1
- Generator version: 7.12.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://invoicetronic.com](https://invoicetronic.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build invoicetronic_sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./invoicetronic_sdk-1.gem
```

(for development, run `gem install --dev ./invoicetronic_sdk-1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'invoicetronic_sdk', '~> 1'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/invoicetronic/ruby-sdk, then add the following in the Gemfile:

    gem 'invoicetronic_sdk', :git => 'https://github.com/invoicetronic/ruby-sdk.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'invoicetronic_sdk'

# Setup authorization
Invoicetronic_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'
end

api_instance = Invoicetronic_Sdk::CompanyApi.new
opts = {
  page: 56, # Integer | Page number. Defaults to 1.
  page_size: 56, # Integer | Items per page. Defaults to 50. Cannot be greater than 200.
  sort: 'sort_example' # String | Sort by field. Prefix with '-' for descending order.
}

begin
  #List companies
  result = api_instance.company_get(opts)
  p result
rescue Invoicetronic_Sdk::ApiError => e
  puts "Exception when calling CompanyApi->company_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Invoicetronic_Sdk::CompanyApi* | [**company_get**](docs/CompanyApi.md#company_get) | **GET** /company | List companies
*Invoicetronic_Sdk::CompanyApi* | [**company_id_delete**](docs/CompanyApi.md#company_id_delete) | **DELETE** /company/{id} | Delete a company
*Invoicetronic_Sdk::CompanyApi* | [**company_id_get**](docs/CompanyApi.md#company_id_get) | **GET** /company/{id} | Get a company by id
*Invoicetronic_Sdk::CompanyApi* | [**company_post**](docs/CompanyApi.md#company_post) | **POST** /company | Add a company
*Invoicetronic_Sdk::CompanyApi* | [**company_put**](docs/CompanyApi.md#company_put) | **PUT** /company | Update a company
*Invoicetronic_Sdk::LogApi* | [**log_get**](docs/LogApi.md#log_get) | **GET** /log | List events
*Invoicetronic_Sdk::LogApi* | [**log_id_get**](docs/LogApi.md#log_id_get) | **GET** /log/{id} | Get an event by id
*Invoicetronic_Sdk::ReceiveApi* | [**receive_get**](docs/ReceiveApi.md#receive_get) | **GET** /receive | List incoming invoices
*Invoicetronic_Sdk::ReceiveApi* | [**receive_id_delete**](docs/ReceiveApi.md#receive_id_delete) | **DELETE** /receive/{id} | Delete an incoming invoice by id
*Invoicetronic_Sdk::ReceiveApi* | [**receive_id_get**](docs/ReceiveApi.md#receive_id_get) | **GET** /receive/{id} | Get an incoming invoice by id
*Invoicetronic_Sdk::SendApi* | [**send_file_post**](docs/SendApi.md#send_file_post) | **POST** /send/file | Add an invoice by file
*Invoicetronic_Sdk::SendApi* | [**send_get**](docs/SendApi.md#send_get) | **GET** /send | List invoices
*Invoicetronic_Sdk::SendApi* | [**send_id_get**](docs/SendApi.md#send_id_get) | **GET** /send/{id} | Get a invoice by id
*Invoicetronic_Sdk::SendApi* | [**send_json_post**](docs/SendApi.md#send_json_post) | **POST** /send/json | Add an invoice by json
*Invoicetronic_Sdk::SendApi* | [**send_post**](docs/SendApi.md#send_post) | **POST** /send | Add an invoice
*Invoicetronic_Sdk::SendApi* | [**send_validate_files_post**](docs/SendApi.md#send_validate_files_post) | **POST** /send/validate/files | Validate an invoice by file
*Invoicetronic_Sdk::SendApi* | [**send_validate_json_post**](docs/SendApi.md#send_validate_json_post) | **POST** /send/validate/json | Validate an invoice by json
*Invoicetronic_Sdk::SendApi* | [**send_validate_post**](docs/SendApi.md#send_validate_post) | **POST** /send/validate | Validate an invoice
*Invoicetronic_Sdk::SendApi* | [**send_validate_xml_post**](docs/SendApi.md#send_validate_xml_post) | **POST** /send/validate/xml | Validate an invoice by xml
*Invoicetronic_Sdk::SendApi* | [**send_xml_post**](docs/SendApi.md#send_xml_post) | **POST** /send/xml | Add an invoice by xml
*Invoicetronic_Sdk::StatusApi* | [**status_get**](docs/StatusApi.md#status_get) | **GET** /status | Account status
*Invoicetronic_Sdk::UpdateApi* | [**update_get**](docs/UpdateApi.md#update_get) | **GET** /update | List updates
*Invoicetronic_Sdk::UpdateApi* | [**update_id_get**](docs/UpdateApi.md#update_id_get) | **GET** /update/{id} | Get an update by id
*Invoicetronic_Sdk::WebhookApi* | [**webhook_get**](docs/WebhookApi.md#webhook_get) | **GET** /webhook | List webhooks
*Invoicetronic_Sdk::WebhookApi* | [**webhook_id_delete**](docs/WebhookApi.md#webhook_id_delete) | **DELETE** /webhook/{id} | Delete a webhook by id
*Invoicetronic_Sdk::WebhookApi* | [**webhook_id_get**](docs/WebhookApi.md#webhook_id_get) | **GET** /webhook/{id} | Get a webhook by id
*Invoicetronic_Sdk::WebhookApi* | [**webhook_post**](docs/WebhookApi.md#webhook_post) | **POST** /webhook | Add a webhook
*Invoicetronic_Sdk::WebhookApi* | [**webhook_put**](docs/WebhookApi.md#webhook_put) | **PUT** /webhook | Update a webhook
*Invoicetronic_Sdk::WebhookApi* | [**webhookhistory_get**](docs/WebhookApi.md#webhookhistory_get) | **GET** /webhookhistory | List webhook history items
*Invoicetronic_Sdk::WebhookApi* | [**webhookhistory_id_get**](docs/WebhookApi.md#webhookhistory_id_get) | **GET** /webhookhistory/{id} | Get a webhook history item by id


## Documentation for Models

 - [Invoicetronic_Sdk::Allegati](docs/Allegati.md)
 - [Invoicetronic_Sdk::AltriDatiGestionali](docs/AltriDatiGestionali.md)
 - [Invoicetronic_Sdk::Anagrafica](docs/Anagrafica.md)
 - [Invoicetronic_Sdk::CedentePrestatore](docs/CedentePrestatore.md)
 - [Invoicetronic_Sdk::CessionarioCommittente](docs/CessionarioCommittente.md)
 - [Invoicetronic_Sdk::CodiceArticolo](docs/CodiceArticolo.md)
 - [Invoicetronic_Sdk::Company](docs/Company.md)
 - [Invoicetronic_Sdk::Contatti](docs/Contatti.md)
 - [Invoicetronic_Sdk::ContattiTrasmittente](docs/ContattiTrasmittente.md)
 - [Invoicetronic_Sdk::DatiAnagrafici](docs/DatiAnagrafici.md)
 - [Invoicetronic_Sdk::DatiAnagraficiCedentePrestatore](docs/DatiAnagraficiCedentePrestatore.md)
 - [Invoicetronic_Sdk::DatiAnagraficiCessionarioCommittente](docs/DatiAnagraficiCessionarioCommittente.md)
 - [Invoicetronic_Sdk::DatiAnagraficiVettore](docs/DatiAnagraficiVettore.md)
 - [Invoicetronic_Sdk::DatiBeniServizi](docs/DatiBeniServizi.md)
 - [Invoicetronic_Sdk::DatiBollo](docs/DatiBollo.md)
 - [Invoicetronic_Sdk::DatiCassaPrevidenziale](docs/DatiCassaPrevidenziale.md)
 - [Invoicetronic_Sdk::DatiContratto](docs/DatiContratto.md)
 - [Invoicetronic_Sdk::DatiConvenzione](docs/DatiConvenzione.md)
 - [Invoicetronic_Sdk::DatiDDT](docs/DatiDDT.md)
 - [Invoicetronic_Sdk::DatiFattureCollegate](docs/DatiFattureCollegate.md)
 - [Invoicetronic_Sdk::DatiGenerali](docs/DatiGenerali.md)
 - [Invoicetronic_Sdk::DatiGeneraliDocumento](docs/DatiGeneraliDocumento.md)
 - [Invoicetronic_Sdk::DatiOrdineAcquisto](docs/DatiOrdineAcquisto.md)
 - [Invoicetronic_Sdk::DatiPagamento](docs/DatiPagamento.md)
 - [Invoicetronic_Sdk::DatiRicezione](docs/DatiRicezione.md)
 - [Invoicetronic_Sdk::DatiRiepilogo](docs/DatiRiepilogo.md)
 - [Invoicetronic_Sdk::DatiRitenuta](docs/DatiRitenuta.md)
 - [Invoicetronic_Sdk::DatiSAL](docs/DatiSAL.md)
 - [Invoicetronic_Sdk::DatiTrasmissione](docs/DatiTrasmissione.md)
 - [Invoicetronic_Sdk::DatiTrasporto](docs/DatiTrasporto.md)
 - [Invoicetronic_Sdk::DatiVeicoli](docs/DatiVeicoli.md)
 - [Invoicetronic_Sdk::DettaglioLinee](docs/DettaglioLinee.md)
 - [Invoicetronic_Sdk::DettaglioPagamento](docs/DettaglioPagamento.md)
 - [Invoicetronic_Sdk::DocumentData](docs/DocumentData.md)
 - [Invoicetronic_Sdk::Error](docs/Error.md)
 - [Invoicetronic_Sdk::Event](docs/Event.md)
 - [Invoicetronic_Sdk::FatturaElettronicaBody](docs/FatturaElettronicaBody.md)
 - [Invoicetronic_Sdk::FatturaElettronicaHeader](docs/FatturaElettronicaHeader.md)
 - [Invoicetronic_Sdk::FatturaOrdinaria](docs/FatturaOrdinaria.md)
 - [Invoicetronic_Sdk::FatturaPrincipale](docs/FatturaPrincipale.md)
 - [Invoicetronic_Sdk::IdFiscaleIVA](docs/IdFiscaleIVA.md)
 - [Invoicetronic_Sdk::IdTrasmittente](docs/IdTrasmittente.md)
 - [Invoicetronic_Sdk::IndirizzoResa](docs/IndirizzoResa.md)
 - [Invoicetronic_Sdk::IscrizioneREA](docs/IscrizioneREA.md)
 - [Invoicetronic_Sdk::ModelSend](docs/ModelSend.md)
 - [Invoicetronic_Sdk::ProblemDetails](docs/ProblemDetails.md)
 - [Invoicetronic_Sdk::ProblemHttpResult](docs/ProblemHttpResult.md)
 - [Invoicetronic_Sdk::RappresentanteFiscale](docs/RappresentanteFiscale.md)
 - [Invoicetronic_Sdk::RappresentanteFiscaleCessionarioCommittente](docs/RappresentanteFiscaleCessionarioCommittente.md)
 - [Invoicetronic_Sdk::Receive](docs/Receive.md)
 - [Invoicetronic_Sdk::ScontoMaggiorazione](docs/ScontoMaggiorazione.md)
 - [Invoicetronic_Sdk::SedeCedentePrestatore](docs/SedeCedentePrestatore.md)
 - [Invoicetronic_Sdk::SedeCessionarioCommittente](docs/SedeCessionarioCommittente.md)
 - [Invoicetronic_Sdk::StabileOrganizzazione](docs/StabileOrganizzazione.md)
 - [Invoicetronic_Sdk::Status](docs/Status.md)
 - [Invoicetronic_Sdk::TerzoIntermediarioOSoggettoEmittente](docs/TerzoIntermediarioOSoggettoEmittente.md)
 - [Invoicetronic_Sdk::Update](docs/Update.md)
 - [Invoicetronic_Sdk::WebHook](docs/WebHook.md)
 - [Invoicetronic_Sdk::WebHookHistory](docs/WebHookHistory.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### Basic

- **Type**: HTTP basic authentication

