# OpenapiClient::ReleasePaymentRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **release_amount** | **Integer** | Partial amount to be released in cents | [optional] |
| **flag_release** | **Boolean** | to be used if release flagging enabled for your marketplace | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReleasePaymentRequestBody.new(
  release_amount: null,
  flag_release: false
)
```

