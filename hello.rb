require 'sinatra'
require 'httparty'

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

get '/' do
  "Hello World!"
end

get '/api/ports' do
  response = HTTParty.get("http://apitest.cargofive.com#{request.fullpath}")

  response.body
end
