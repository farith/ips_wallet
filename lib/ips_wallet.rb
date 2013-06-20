module IpsWallet
  mattr_accessor :merchant_id
  mattr_accessor :merchant_password
  mattr_accessor :environment
  mattr_accessor :logger
  mattr_reader   :sandbox_merchant_url
  mattr_reader   :production_merchant_url

  @@sandbox_merchant_url    = 'https://testewallet.com/eWalletWS/ws_Adapter.aspx'.freeze
  @@production_merchant_url = 'https://www.i-payout.net/eWalletWS/ws_Adapter.aspx'.freeze

  class << self
    def setup
      yield self
    end

    def environment=(env)
      unless [:sandbox, :production].include?(env)
        raise ArgumentError, "#{env.inspect} is not a valid environment"
      end
      @@environment = env
    end

    def logger
      @@logger || default_logger
    end

    def api_version # :nodoc:

    end

    protected
    def self.default_logger # :nodoc:
      logger = Logger.new(STDOUT)
      logger.level = Logger::INFO
      logger
    end
  end
end