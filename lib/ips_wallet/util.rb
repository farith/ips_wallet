module IpsWalet
  module Util
    class << self
      def hash_to_query_string(hash)
        hash.collect do |key, value|
          if value.is_a?(Hash)
            hash_to_query_string value, key
          elsif value.is_a?(Array)
            array_to_query_string value
          else
            url_encode(key) + "=" + url_encode(value)
          end
        end.sort * '&'
      end

      def array_to_query_string(array_of_object)

      end

      def parse_query_string(qs)
        qs.split('&').inject({}) do |result, couplet|
          pair = couplet.split('=')
          result[CGI.unescape(pair[0]).to_sym] = CGI.unescape(pair[1] || '')
          result
        end
      end
    end
  end
end