# OpenapiClient::CardAccountsApi

All URIs are relative to *https://virtserver.swaggerhub.com/AssemblyPlatforms/assembly-api/2.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_card_account**](CardAccountsApi.md#create_card_account) | **POST** /card_accounts | Create Card Account
[**redact_card_account**](CardAccountsApi.md#redact_card_account) | **DELETE** /card_accounts/{id} | Redact Card Account
[**show_card_account**](CardAccountsApi.md#show_card_account) | **GET** /card_accounts/{id} | Show Card Account
[**show_card_account_user**](CardAccountsApi.md#show_card_account_user) | **GET** /card_accounts/{id}/users | Show Card Account User
[**verify_card**](CardAccountsApi.md#verify_card) | **PATCH** /card_accounts/{id}/verify | Verify Card



## create_card_account

> CardAccount create_card_account(card_account_request_body)

Create Card Account

Create a Credit **Card Account** to be used as a funding source. Store the returned `:id` and use it for a `make_payment` **Item Action** call. The `:id` is also referred to as a **token** when involving Credit Cards. 

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

api_instance = OpenapiClient::CardAccountsApi.new
card_account_request_body = OpenapiClient::CardAccountRequestBody.new # CardAccountRequestBody | 

begin
  #Create Card Account
  result = api_instance.create_card_account(card_account_request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardAccountsApi->create_card_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_account_request_body** | [**CardAccountRequestBody**](CardAccountRequestBody.md)|  | 

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## redact_card_account

> CardAccountDeletion redact_card_account(id)

Redact Card Account

Redact a Credit **Card Account** using a given `:id`. Redacted Credit **Card Accounts** can no longer be used as a funding source. 

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

api_instance = OpenapiClient::CardAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | ID of the card account to be deleted

begin
  #Redact Card Account
  result = api_instance.redact_card_account(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardAccountsApi->redact_card_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the card account to be deleted | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**CardAccountDeletion**](CardAccountDeletion.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_card_account

> CardAccount show_card_account(id)

Show Card Account

Show details of a specific Credit **Card Account** using a given `:id`. You can toggle the card account number display to show the first 6 digits in addition to the last 4 digits. Contact Assembly if you want to toggle the card account display. 

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

api_instance = OpenapiClient::CardAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Card account ID

begin
  #Show Card Account
  result = api_instance.show_card_account(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardAccountsApi->show_card_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Card account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_card_account_user

> SingleUser show_card_account_user(id)

Show Card Account User

Show the **User** the Credit **Card Account** is associated with using a given `:id`.

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

api_instance = OpenapiClient::CardAccountsApi.new
id = '901d8cd0-6af3-0138-967d-0a58a9feac04' # String | Card account ID

begin
  #Show Card Account User
  result = api_instance.show_card_account_user(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardAccountsApi->show_card_account_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Card account ID | [default to &#39;901d8cd0-6af3-0138-967d-0a58a9feac04&#39;]

### Return type

[**SingleUser**](SingleUser.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_card

> CardAccount verify_card(id, opts)

Verify Card

Where pre-authorization is enabled on a platform, verifies a **Card Account** when a **Card Account** is successfully verified, its verification status is `verified`.

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

api_instance = OpenapiClient::CardAccountsApi.new
id = 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' # String | Card account ID
opts = {
  card_account_verify_request_body: OpenapiClient::CardAccountVerifyRequestBody.new # CardAccountVerifyRequestBody | 
}

begin
  #Verify Card
  result = api_instance.verify_card(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardAccountsApi->verify_card: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Card account ID | [default to &#39;aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee&#39;]
 **card_account_verify_request_body** | [**CardAccountVerifyRequestBody**](CardAccountVerifyRequestBody.md)|  | [optional] 

### Return type

[**CardAccount**](CardAccount.md)

### Authorization

[basicAuth](../README.md#basicAuth), [oAuth2ClientCredentials](../README.md#oAuth2ClientCredentials)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

