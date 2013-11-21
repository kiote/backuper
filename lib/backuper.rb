require 'sinatra/base'
require 'sinatra/config_file'

class Backuper < Sinatra::Base
  register Sinatra::ConfigFile
  config_file 'config.yml'

  enable :sessions

  get '/' do
    "Backups"
    session['m'] = 'Hello World!'
  end

  get '/login' do
    redirect "https://oauth.yandex.ru/authorize?response_type=token&client_id=#{settings.yandex_client_id}"
  end

  get '/some' do
    session['m']
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
