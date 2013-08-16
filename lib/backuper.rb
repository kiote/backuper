require 'sinatra/base'

class Backuper < Sinatra::Base
  get '/' do
    'Hello Backuper!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
