require 'sinatra/base'

class DiaryManager < Sinatra::Base
  get '/' do

  end

  run! if app_file == $0
end
