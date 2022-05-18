# OpenapiClient::CallbackRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to which the callbacks will notify | [default to &#39;https://httpbin.org&#39;] |
| **object_type** | **String** | Object or entity to which the callbacks refer. Please refer to [Callbacks](https://developer.assemblypayments.com/docs/callbacks) for a list of object types. | [default to &#39;users&#39;] |
| **enabled** | **String** | Toggle whether callback is active or inactive. | [default to &#39;true&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CallbackRequestBody.new(
  url: https://httpbin.org,
  object_type: users,
  enabled: true
)
```

