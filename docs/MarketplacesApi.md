# OpenapiClient::MarketplacesApi

All URIs are relative to *https://virtserver.swaggerhub.com/AssemblyPlatforms/assembly-api/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**show_marketplace**](MarketplacesApi.md#show_marketplace) | **GET** /marketplace | Show Marketplace



## show_marketplace

> Marketplace show_marketplace

Show Marketplace

Show details of your **Platform**, providing access to your configuration and related **User** and **Company**.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oAuth2ClientCredentials
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MarketplacesApi.new

begin
  #Show Marketplace
  result = api_instance.show_marketplace
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MarketplacesApi->show_marketplace: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Marketplace**](Marketplace.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

