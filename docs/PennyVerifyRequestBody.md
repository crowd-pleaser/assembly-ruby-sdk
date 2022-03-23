# OpenapiClient::PennyVerifyRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount_1** | **Integer** | First penny amount in cents. Can range from 1 to 30 cents. | [default to 10]
**amount_2** | **Integer** | Second penny amount in cents. Can range from 1 to 30 cents. | [default to 20]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PennyVerifyRequestBody.new(amount_1: null,
                                 amount_2: null)
```


