require 'sinatra/base'
require 'sinatra/config_file'
require 'haml'

class Backuper < Sinatra::Base
  register Sinatra::ConfigFile
  config_file 'config.yml'

  enable :sessions

  get '/' do
    haml :index
  end

  get '/login' do
    redirect "https://oauth.yandex.ru/authorize?response_type=token&client_id=#{settings.yandex_client_id}"
  end

  get '/some' do
    session['m']
  end

  post '/' do
    session['m'] = params[:hash]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
