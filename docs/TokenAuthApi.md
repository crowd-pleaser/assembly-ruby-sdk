# OpenapiClient::TokenAuthApi

All URIs are relative to *https://virtserver.swaggerhub.com/AssemblyPlatforms/assembly-api/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generate_token**](TokenAuthApi.md#generate_token) | **POST** /token_auths | Generate Token



## generate_token

> Object generate_token(token_auth_request_body)

Generate Token

Create a token, either for a bank or a card account, that can be used with the **PromisePay.js** package to securely send Assembly credit card details.

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

api_instance = OpenapiClient::TokenAuthApi.new
token_auth_request_body = OpenapiClient::TokenAuthRequestBody.new # TokenAuthRequestBody | 

begin
  #Generate Token
  result = api_instance.generate_token(token_auth_request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling TokenAuthApi->generate_token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_auth_request_body** | [**TokenAuthRequestBody**](TokenAuthRequestBody.md)|  | 

### Return type

**Object**

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

