require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combos')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combos') do
  @coin_combos = params.fetch('coin_combos').to_i().coin_combo()
  erb(:coin_combos)
end
