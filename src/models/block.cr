require "json"
require "big"
require "./transactions"

module Models
  class Block
    include JSON::Serializable

    @nonce : String? = nil
    @difficulty : BigInt = 0.to_big_i
    @number : BigInt = -1.to_big_i
    @size : BigInt = 0.to_big_i
    @uncles = [] of String
    @transactions = [] of (String | Transaction)
    @state_root = ""
    @timestamp = ""

    @[JSON::Field("transactionsRoot")]
    @transactions_root = ""

    @[JSON::Field("totalDifficulty")]
    @total_difficulty : BigInt? = 0.to_big_i

  end
end
