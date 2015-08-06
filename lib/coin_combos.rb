class Float
  define_method(:coin_combo) do
    coins = {0.25 => "quarter",
             0.10 => "dime",
             0.05 => "nickel",
             0.01 => "penny"}

    if coins.include?(self)
      coins.fetch(self)
    end
  end
end
