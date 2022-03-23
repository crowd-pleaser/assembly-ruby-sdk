# OpenapiClient::AuthenticationApi

All URIs are relative to *https://virtserver.swaggerhub.com/AssemblyPlatforms/assembly-api/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**token**](AuthenticationApi.md#token) | **POST** /tokens | Token



## token

> TokensResponse token(tokens_request_body)

Token

Exchange client application credentials for a bearer token. Please ensure to call the auth issuing server as described at https://developer.assemblypayments.com/reference#authentication

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

api_instance = OpenapiClient::AuthenticationApi.new
tokens_request_body = OpenapiClient::TokensRequestBody.new # TokensRequestBody | 

begin
  #Token
  result = api_instance.token(tokens_request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AuthenticationApi->token: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tokens_request_body** | [**TokensRequestBody**](TokensRequestBody.md)|  | 

### Return type

[**TokensResponse**](TokensResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

