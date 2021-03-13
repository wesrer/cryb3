require "json"

module Models
  class RPCError
    include JSON::Serializable
    @code : Int32
    @message : String

    def initialize(@code : Int32, @message : String)
    end

  end
end
