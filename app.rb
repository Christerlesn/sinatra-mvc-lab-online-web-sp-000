require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do

    piglatinizer = PigLatinizer.new
    @user_phrase = piglatinizer.piglatinize(params[:user_phrase])

    erb :piglatinize
  end

end
