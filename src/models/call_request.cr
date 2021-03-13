require "json"
require "big"


module Models
  class CallRequest
  end

  class CallObject
    include JSON::Serializable

    @data : String
    @from : String
    @gas : BigInt
    @to: String
    @value : BigInt

    @[JSON::Field("gasPrice")]
    @gas_price: BigInt

    def initialize(@to = nil,
                   @from = nil,
                   @gas = nil,
                   @gas_price = nil,
                   @value = nil,
                   @data = nil)
    end
  end
end
