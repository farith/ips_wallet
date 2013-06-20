IpsWallet.setup do |config|
 if Rails.env.production?
    config.environment       = :production
    config.merchant_id       = 'YOUR IPS WALLET MERCHANT ID'
    config.merchant_password = 'YOUR IPS WALLET MERCHANT PASSWORD'
  else
    config.environment       = :sandbox
    config.merchant_id       = 'YOUR IPS WALLET MERCHANT ID'
    config.merchant_password = 'YOUR IPS WALLET MERCHANT PASSWORD'
  end
end

