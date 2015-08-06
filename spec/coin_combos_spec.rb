require('rspec')
require('coin_combos')

describe('Float#coin_combo') do
  it('return single coin') do
    expect((0.10).coin_combo()).to(eq("dime"))
  end
end
