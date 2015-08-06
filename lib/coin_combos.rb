# require('pry')
class Fixnum
  define_method(:coin_combo) do
    coins = {25 => "quarter",
             10 => "dime",
             5 => "nickel",
             1 => "penny"}
    amount = self
    result = String.new()
    quarter = 0
    nickel = 0
# binding.pry
    until amount.==(0)
      if coins.include?(self)
        amount = amount - self
        result = coins.fetch(self)
      elsif amount >= coins.keys[0]
        amount = amount.-(coins.keys[0])
        quarter = quarter + 1
# binding.pry
      elsif amount >= coins.keys[1]
        amount = amount.-(coins.keys[1])
      else amount >= coins.keys[2]
        amount = amount.-(coins.keys[2])
        nickel = nickel + 1
      end
    end

    if quarter > 0
      result.concat(coins.fetch(25) + ', ')
    end
    if nickel > 0
      result.concat(coins.fetch(5))
    end
    result
  end
end
