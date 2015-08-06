
class Fixnum
  define_method(:coin_combo) do
    coins = {25 => "quarter(s)",
             10 => "dime(s)",
             5 => "nickel(s)",
             1 => "pennies"}
    amount = self
    result = String.new()
    quarter = 0
    dime = 0
    nickel = 0
    penny = 0

    until amount.==(0)
      if coins.include?(self)
        amount = amount - self
        result = coins.fetch(self)
      elsif amount >= coins.keys[0]
        amount = amount.-(coins.keys[0])
        quarter = quarter + 1
      elsif amount >= coins.keys[1]
        amount = amount.-(coins.keys[1])
        dime = dime + 1
      elsif amount >= coins.keys[2]
        amount = amount.-(coins.keys[2])
        nickel = nickel + 1
      else amount >= coins.keys[3]
        amount = amount.-(coins.keys[3])
        penny = penny + 1
      end
    end

    if quarter > 0
      result.concat(quarter.to_s + ' ').concat(coins.fetch(25) + ' ')
    end
    if dime > 0
      result.concat(dime.to_s + ' ').concat(coins.fetch(10) + ' ')
    end
    if nickel > 0
      result.concat(nickel.to_s + ' ').concat(coins.fetch(5) + ' ')
    end
    if penny > 0
      result.concat(penny.to_s + ' ').concat(coins.fetch(1) + ' ')
    end
    result
  end
end
