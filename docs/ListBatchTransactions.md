# OpenapiClient::ListBatchTransactions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_transactions** | [**Array&lt;BatchTransaction&gt;**](BatchTransaction.md) |  | [optional] |
| **meta** | [**ListBpayAccountsMeta**](ListBpayAccountsMeta.md) |  | [optional] |
| **links** | [**AddressAddressesLinks**](AddressAddressesLinks.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListBatchTransactions.new(
  batch_transactions: null,
  meta: null,
  links: null
)
```

