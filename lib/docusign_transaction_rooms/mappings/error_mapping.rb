module DocusignTransactionRooms
  class ErrorMapping
    Error = Struct.new(:message, :errorCode)

    include Kartograph::DSL

    kartograph do
      mapping Error

      property :errorCode, scopes: [:read]
      property :message, scopes: [:read]
    end

    def self.fail_with(klass, content)
      error = extract_single(content, :read)
      raise klass, error.message
    end
  end
end
