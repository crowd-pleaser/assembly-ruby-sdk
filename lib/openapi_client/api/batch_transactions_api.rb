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
  class BatchTransactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Batch Transactions
    # Retrieve an ordered and paginated list of existing **Batch Transactions**. The list can be filtered by **Account**, **Batch ID**, **Item**, and **Transaction Type**. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200. (default to 10)
    # @option opts [Integer] :offset Number of records to offset. Required for pagination. (default to 0)
    # @option opts [String] :account_id Bank, Card or Wallet Account ID.
    # @option opts [String] :batch_id Batch ID. This appears on a bank reference.
    # @option opts [String] :item_id Item ID
    # @option opts [String] :transaction_type The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
    # @option opts [String] :transaction_type_method The method the transaction was carried out with. Options for querying are: credit_card, npp, bpay, wire_transfer, wallet_account_transfer, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
    # @option opts [String] :direction Direction of the transaction. Options are debit, credit
    # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :disbursement_bank The bank used for disbursing the payment. Please use a default value of &#x60;any&#x60;
    # @option opts [String] :processing_bank The bank used for processing the payment. Please use a default value of &#x60;any&#x60;
    # @return [ListBatchTransactions]
    def list_batch_transactions(opts = {})
      data, _status_code, _headers = list_batch_transactions_with_http_info(opts)
      data
    end

    # List Batch Transactions
    # Retrieve an ordered and paginated list of existing **Batch Transactions**. The list can be filtered by **Account**, **Batch ID**, **Item**, and **Transaction Type**. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Number of records to retrieve. Up to 200.
    # @option opts [Integer] :offset Number of records to offset. Required for pagination.
    # @option opts [String] :account_id Bank, Card or Wallet Account ID.
    # @option opts [String] :batch_id Batch ID. This appears on a bank reference.
    # @option opts [String] :item_id Item ID
    # @option opts [String] :transaction_type The type of transaction. Options for querying are: payment, refund, disbursement, fee, deposit, withdrawal. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
    # @option opts [String] :transaction_type_method The method the transaction was carried out with. Options for querying are: credit_card, npp, bpay, wire_transfer, wallet_account_transfer, misc. For returned values please refer here: [Enumeration Values](https://developer.assemblypayments.com/docs/enumeration-values) for the full list
    # @option opts [String] :direction Direction of the transaction. Options are debit, credit
    # @option opts [String] :created_before Date and time in ISO 8601 format the item(s) were created before (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :created_after Date and time in ISO 8601 format the item(s) were created after (e.g. 2020-02-27T23:54:59Z)
    # @option opts [String] :disbursement_bank The bank used for disbursing the payment. Please use a default value of &#x60;any&#x60;
    # @option opts [String] :processing_bank The bank used for processing the payment. Please use a default value of &#x60;any&#x60;
    # @return [Array<(ListBatchTransactions, Integer, Hash)>] ListBatchTransactions data, response status code and response headers
    def list_batch_transactions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchTransactionsApi.list_batch_transactions ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 200
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BatchTransactionsApi.list_batch_transactions, must be smaller than or equal to 200.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling BatchTransactionsApi.list_batch_transactions, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling BatchTransactionsApi.list_batch_transactions, must be greater than or equal to 0.'
      end

      allowable_values = ["payment", "refund", "disbursement", "fee", "deposit", "withdrawal"]
      if @api_client.config.client_side_validation && opts[:'transaction_type'] && !allowable_values.include?(opts[:'transaction_type'])
        fail ArgumentError, "invalid value for \"transaction_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["credit_card", "npp", "bpay", "wallet_account_transfer", "wire_transfer", "misc"]
      if @api_client.config.client_side_validation && opts[:'transaction_type_method'] && !allowable_values.include?(opts[:'transaction_type_method'])
        fail ArgumentError, "invalid value for \"transaction_type_method\", must be one of #{allowable_values}"
      end
      allowable_values = ["debit", "credit"]
      if @api_client.config.client_side_validation && opts[:'direction'] && !allowable_values.include?(opts[:'direction'])
        fail ArgumentError, "invalid value for \"direction\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/batch_transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'batch_id'] = opts[:'batch_id'] if !opts[:'batch_id'].nil?
      query_params[:'item_id'] = opts[:'item_id'] if !opts[:'item_id'].nil?
      query_params[:'transaction_type'] = opts[:'transaction_type'] if !opts[:'transaction_type'].nil?
      query_params[:'transaction_type_method'] = opts[:'transaction_type_method'] if !opts[:'transaction_type_method'].nil?
      query_params[:'direction'] = opts[:'direction'] if !opts[:'direction'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'disbursement_bank'] = opts[:'disbursement_bank'] if !opts[:'disbursement_bank'].nil?
      query_params[:'processing_bank'] = opts[:'processing_bank'] if !opts[:'processing_bank'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListBatchTransactions'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"BatchTransactionsApi.list_batch_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchTransactionsApi#list_batch_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Batch Transaction
    # Get a batch transaction using its ID
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [SingleBatchTransaction]
    def show_batch_transaction(id, opts = {})
      data, _status_code, _headers = show_batch_transaction_with_http_info(id, opts)
      data
    end

    # Show Batch Transaction
    # Get a batch transaction using its ID
    # @param id [String] Transaction ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(SingleBatchTransaction, Integer, Hash)>] SingleBatchTransaction data, response status code and response headers
    def show_batch_transaction_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchTransactionsApi.show_batch_transaction ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BatchTransactionsApi.show_batch_transaction"
      end
      # resource path
      local_var_path = '/batch_transactions/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'SingleBatchTransaction'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'oAuth2ClientCredentials']

      new_options = opts.merge(
        :operation => :"BatchTransactionsApi.show_batch_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchTransactionsApi#show_batch_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
