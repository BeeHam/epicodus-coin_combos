require('rspec')
require('coin_combos')

describe('Float#coin_combo') do
  it('return single coin') do
    expect((0.10).coin_combo()).to(eq("dime"))
  end

  it('return a combination of coins') do
    expect((0.30).coin_combo()).to(eq("1 quarter, 1 nickel"))
  end
end
