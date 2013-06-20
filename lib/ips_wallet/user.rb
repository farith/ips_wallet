module IpsWallet
  class User
    # This function makes a request to load eWallets.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_Load
    def load_money_to_accounts

    end
    # This function gets user’s eWallet balance in the system.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_GetCurrencyBalance
    def get_currency_balance

    end

    # This function updates a user’s information in the system.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_UpdateUser
    def update

    end

    # This function is used to manually set a user account status into <b>Closed</b>, <b>Suspended</b>, or <b>Open</b> state.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_UpdateUserAccountStatus
    def update_account_status

    end

    # This function is used to get history of eWallet activity of user.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_GetTransactionHistory
    def get_transaction_history

    end

    # This function is used to verify user’s password.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_VerifyPassword
    def verify_password

    end

    # This function is used to add items to purchase into eWallet check out page.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_AddCheckoutItems
    def add_checkout_items

    end

    # This function is used to get information about previously submitted checkout items.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_GetCheckoutItems
    def get_checkout_items

    end

    # This function is used to get all pay-ins assigned to the user.
    # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_GetUserRecurringPayins
    def get_recurring_payins

    end

    class << self
      # This function creates a user and his or her eWallet in the system.
      # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_RegisterUser
      def register_user

      end

      # This function retrieves eWallet profile of a User.
      # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_GetCustomer
      def get_customer

      end

      # This function is used to find user names by user status.
      # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_FindUsers
      def find_by_status

      end

      # This function is used to check if a given user name exists.
      # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_CheckIfUserNameExists
      def user_exists?(user_name)

      end
    end
  end
end