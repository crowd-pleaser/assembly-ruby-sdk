=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module OpenapiClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create User
    # Create a **User**. **Users** can be associated with **Items** either as a buyer or a seller. **Users** can’t be both the buyer and seller for the same **Item**. **Note**: Some parameters are required for user verification. See our guide on [Onboarding a Payout User/Seller](https://developer.assemblypayments.com/docs/onboarding-a-pay-out-user) for more information. 
    # @param user_request_body [UserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def create_user(user_request_body, opts = {})
      data, _status_code, _headers = create_user_with_http_info(user_request_body, opts)
      data
    end

    # Create User
    # Create a **User**. **Users** can be associated with **Items** either as a buyer or a seller. **Users** can’t be both the buyer and seller for the same **Item**. **Note**: Some parameters are required for user verification. See our guide on [Onboarding a Payout User/Seller](https://developer.assemblypayments.com/docs/onboarding-a-pay-out-user) for more information. 
    # @param user_request_body [UserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def create_user_with_http_info(user_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.create_user ...'
      end
      # verify the required parameter 'user_request_body' is set
      if @api_client.config.client_side_validation && user_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'user_request_body' when calling UsersApi.create_user"
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(user_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.create_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#create_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List User's BPay Accounts
    # List the **BPay Accounts** the **User** is associated with using a given `:id`.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [ListBpayAccounts]
    def list_user_b_pay_accounts(id, opts = {})
      data, _status_code, _headers = list_user_b_pay_accounts_with_http_info(id, opts)
      data
    end

    # List User&#39;s BPay Accounts
    # List the **BPay Accounts** the **User** is associated with using a given &#x60;:id&#x60;.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListBpayAccounts, Integer, Hash)>] ListBpayAccounts data, response status code and response headers
    def list_user_b_pay_accounts_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_user_b_pay_accounts ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.list_user_b_pay_accounts"
      end
      # resource path
      local_var_path = '/users/{id}/bpay_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListBpayAccounts'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.list_user_b_pay_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_user_b_pay_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List User Items
    # Retrieve an ordered and paginated list of existing **Items** the **User** is associated with using a given `:id`.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @return [Items]
    def list_user_items(id, opts = {})
      data, _status_code, _headers = list_user_items_with_http_info(id, opts)
      data
    end

    # List User Items
    # Retrieve an ordered and paginated list of existing **Items** the **User** is associated with using a given &#x60;:id&#x60;.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @return [Array<(Items, Integer, Hash)>] Items data, response status code and response headers
    def list_user_items_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_user_items ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.list_user_items"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_user_items, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_user_items, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_user_items, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/users/{id}/items'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Items'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.list_user_items",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_user_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Users
    # Retrieve an ordered and paginated list of existing **Users**.
    # @param search [String] A text value to be used for searching users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @return [Users]
    def list_users(search, opts = {})
      data, _status_code, _headers = list_users_with_http_info(search, opts)
      data
    end

    # List Users
    # Retrieve an ordered and paginated list of existing **Users**.
    # @param search [String] A text value to be used for searching users
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @return [Array<(Users, Integer, Hash)>] Users data, response status code and response headers
    def list_users_with_http_info(search, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_users ...'
      end
      # verify the required parameter 'search' is set
      if @api_client.config.client_side_validation && search.nil?
        fail ArgumentError, "Missing the required parameter 'search' when calling UsersApi.list_users"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_users, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_users, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_users, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'search'] = search
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Users'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.list_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set User Disbursement Account
    # Set the **User’s Disbursement Account** using a given **User** `:id` and a **Bank Account** `:account_id`.
    # @param id [String] User ID
    # @param bank_account_id_request_body [BankAccountIdRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def set_user_disbursement_account(id, bank_account_id_request_body, opts = {})
      data, _status_code, _headers = set_user_disbursement_account_with_http_info(id, bank_account_id_request_body, opts)
      data
    end

    # Set User Disbursement Account
    # Set the **User’s Disbursement Account** using a given **User** &#x60;:id&#x60; and a **Bank Account** &#x60;:account_id&#x60;.
    # @param id [String] User ID
    # @param bank_account_id_request_body [BankAccountIdRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def set_user_disbursement_account_with_http_info(id, bank_account_id_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.set_user_disbursement_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.set_user_disbursement_account"
      end
      # verify the required parameter 'bank_account_id_request_body' is set
      if @api_client.config.client_side_validation && bank_account_id_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id_request_body' when calling UsersApi.set_user_disbursement_account"
      end
      # resource path
      local_var_path = '/users/{id}/disbursement_account'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_id_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.set_user_disbursement_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#set_user_disbursement_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show User
    # Show details of a specific User using a given `:id`.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def show_user(id, opts = {})
      data, _status_code, _headers = show_user_with_http_info(id, opts)
      data
    end

    # Show User
    # Show details of a specific User using a given &#x60;:id&#x60;.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def show_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_user"
      end
      # resource path
      local_var_path = '/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.show_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show User Bank Account
    # Shows the user’s active bank account using a given `:id`.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def show_user_bank_account(id, opts = {})
      data, _status_code, _headers = show_user_bank_account_with_http_info(id, opts)
      data
    end

    # Show User Bank Account
    # Shows the user’s active bank account using a given &#x60;:id&#x60;.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Integer, Hash)>] BankAccount data, response status code and response headers
    def show_user_bank_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_user_bank_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_user_bank_account"
      end
      # resource path
      local_var_path = '/users/{id}/bank_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.show_user_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_user_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show User Card Account
    # Show the user’s active card account using a given `:id`.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [CardAccount]
    def show_user_card_account(id, opts = {})
      data, _status_code, _headers = show_user_card_account_with_http_info(id, opts)
      data
    end

    # Show User Card Account
    # Show the user’s active card account using a given &#x60;:id&#x60;.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CardAccount, Integer, Hash)>] CardAccount data, response status code and response headers
    def show_user_card_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_user_card_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_user_card_account"
      end
      # resource path
      local_var_path = '/users/{id}/card_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CardAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.show_user_card_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_user_card_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show User Wallet Account
    # Show the **User’s Wallet Account** using a given `:id`.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [WalletAccount]
    def show_user_wallet_accounts(id, opts = {})
      data, _status_code, _headers = show_user_wallet_accounts_with_http_info(id, opts)
      data
    end

    # Show User Wallet Account
    # Show the **User’s Wallet Account** using a given &#x60;:id&#x60;.
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(WalletAccount, Integer, Hash)>] WalletAccount data, response status code and response headers
    def show_user_wallet_accounts_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_user_wallet_accounts ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_user_wallet_accounts"
      end
      # resource path
      local_var_path = '/users/{id}/wallet_accounts'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WalletAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.show_user_wallet_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_user_wallet_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update User
    # Update an existing **User’s** attributes using a given `:id`.
    # @param id [String] Unique ID that can be generated by the platform. Cannot contain ’.’ character.
    # @param update_user_request_body [UpdateUserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def update_user(id, update_user_request_body, opts = {})
      data, _status_code, _headers = update_user_with_http_info(id, update_user_request_body, opts)
      data
    end

    # Update User
    # Update an existing **User’s** attributes using a given &#x60;:id&#x60;.
    # @param id [String] Unique ID that can be generated by the platform. Cannot contain ’.’ character.
    # @param update_user_request_body [UpdateUserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def update_user_with_http_info(id, update_user_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.update_user"
      end
      # verify the required parameter 'update_user_request_body' is set
      if @api_client.config.client_side_validation && update_user_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'update_user_request_body' when calling UsersApi.update_user"
      end
      # resource path
      local_var_path = '/users/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_user_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.update_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify User (Prelive Only)
    # Sets a user’s verification state to `approved` on pre-live given the **User** `:id`. Ensure that a **User** has the required user verification information before using this call, otherwise the call will fail. **Note**: This API call will only work in our pre-live environment. The user verification workflow holds for all users in production. 
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [SingleUser]
    def verify_user(id, opts = {})
      data, _status_code, _headers = verify_user_with_http_info(id, opts)
      data
    end

    # Verify User (Prelive Only)
    # Sets a user’s verification state to &#x60;approved&#x60; on pre-live given the **User** &#x60;:id&#x60;. Ensure that a **User** has the required user verification information before using this call, otherwise the call will fail. **Note**: This API call will only work in our pre-live environment. The user verification workflow holds for all users in production. 
    # @param id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleUser, Integer, Hash)>] SingleUser data, response status code and response headers
    def verify_user_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.verify_user ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.verify_user"
      end
      # resource path
      local_var_path = '/users/{id}/identity_verified'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleUser'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"UsersApi.verify_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#verify_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
