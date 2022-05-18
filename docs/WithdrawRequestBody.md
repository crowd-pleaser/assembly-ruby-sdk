# OpenapiClient::WithdrawRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account to withdraw to. | [default to &#39;c1824ad0-73f1-0138-3700-0a58a9feac09&#39;] |
| **amount** | **Integer** | Amount (in cents) to withdraw. |  |
| **custom_descriptor** | **String** | A descriptor specified by the customer to be passed on the withdraw call. This requires that custom_descriptors are enabled. In the case of fast payments (AU / NPP) Assembly will append a value in the beginning of descriptor, the customer can use 200 characters (excluding URL, javascript/code, emojis). In the case of DE batch payments will allow 18 characters | [optional] |
| **reference_id** | **String** | Unique ID information that can be specified by Platforms for wallet withdrawal request. This is an optional field and cannot contain ’.’ character. | [optional][default to &#39;7190770-1-2908&#39;] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WithdrawRequestBody.new(
  account_id: c1824ad0-73f1-0138-3700-0a58a9feac09,
  amount: 173,
  custom_descriptor: ,
  reference_id: 7190770-1-2908
)
```

