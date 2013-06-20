module IpsWallet

  module IpsApiFunction
    class << self
      def get_api_function(lib_method)
        @API_FUNCTION_MAP[lib_method.to_sym]
      end

      protected
      #TODO: group methods by resource
      @API_FUNCTION_MAP = {
          get_bank_accounts_by_user_name: 'eWallet_GetBankAccountsByUserName',
          get_transaction_history:        'eWallet_GetTransactionHistory',
          load_money_to_accounts:         'eWallet_Load',
          update_account_status:          'eWallet_UpdateUserAccountStatus',
          get_currency_balance:           'eWallet_GetCurrencyBalance',
          get_recurring_payins:           'eWallet_GetUserRecurringPayins',
          add_free_card_order:            'eWallet_AddFreeCardOrder',
          find_user_by_status:            'eWallet_FindUsers',
          add_checkout_items:             'eWallet_AddCheckoutItems',
          get_checkout_items:             'eWallet_GetCheckoutItems',
          verify_password:                'eWallet_VerifyPassword',
          register_user:                  'eWallet_RegisterUser',
          user_exists?:                   'eWallet_CheckIfUserNameExists',
          get_customer:                   'eWallet_GetCustomer',
          update_user:                    'eWallet_UpdateUser',
          order_card:                     'eWallet_OrderCard'
     }.freeze
    end
  end
end
