module IpsWallet
  module IpsBaseObject
    def to_s(*args)
      IpsWallet::JSON.dump(@values, :pretty => true)
    end

    def inspect()
      id_string = (self.respond_to?(:id) && !self.id.nil?) ? " id=#{self.id}" : ""
      "#<#{self.class}:0x#{self.object_id.to_s(16)}#{id_string}> JSON: " + self.to_s)
    end

  end
end