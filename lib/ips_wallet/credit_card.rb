module IpsWallet
  class CreditCard
    class << self
      # This function places a prepaid card order for a customer. User must have funds in eWallet or the order will fail.
      # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_OrderCard
      def order_card

      end

      # This function adds a prepaid card order for a customer. A full price for this card is paid by the merchant.
      # https://www.i-payout.net/eWalletWS/ws_eWallet.asmx?op=eWallet_AddFreeCardOrder
      def add_free_card_order

      end
    end
  end
end