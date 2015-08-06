require('rspec')
require('coin_combos')


describe('Fixnum#coin_combo') do
  it('return single coin') do
    expect((10).coin_combo()).to(eq("dime(s)"))
  end

  it('return a combination of coins') do
    expect((30).coin_combo()).to(eq("1 quarter(s) nickel(s) "))
  end

  it('returns coin quantity') do
    expect((50).coin_combo()).to(eq("2 quarter(s) "))
  end
end
