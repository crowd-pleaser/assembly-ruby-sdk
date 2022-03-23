# OpenapiClient::ToolsApi

All URIs are relative to *https://virtserver.swaggerhub.com/AssemblyPlatforms/assembly-api/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_check**](ToolsApi.md#health_check) | **GET** /tools/status | Health check



## health_check

> ToolsStatus health_check

Health check

Displays a health check of the Assembly service.

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

api_instance = OpenapiClient::ToolsApi.new

begin
  #Health check
  result = api_instance.health_check
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ToolsApi->health_check: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ToolsStatus**](ToolsStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

