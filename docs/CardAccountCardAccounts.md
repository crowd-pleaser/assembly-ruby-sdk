# OpenapiClient::CardAccountCardAccounts

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Boolean** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**id** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**cvv_verified** | **Boolean** |  | [optional] 
**verification_status** | **String** |  | [optional] 
**card** | [**CardAccountCardAccountsCard**](CardAccountCardAccountsCard.md) |  | [optional] 
**links** | [**CardAccountCardAccountsLinks**](CardAccountCardAccountsLinks.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardAccountCardAccounts.new(active: true,
                                 created_at: null,
                                 updated_at: null,
                                 id: 46deb476-c1a6-41eb-8eb7-26a695bbe5bc,
                                 currency: AUD,
                                 cvv_verified: true,
                                 verification_status: not_verified,
                                 card: null,
                                 links: null)
```


