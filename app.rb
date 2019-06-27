require 'sinatra/base'


class DiaryManager < Sinatra::Base
  get '/' do
    "Daily Diary"
  end

  get '/diary' do
    @entries = View.all
    erb :"diary/index"
  end

  get '/diary/new' do
    erb :"diary/new"
  end

  post '/diary' do
    p "form data submitted to the / route"
    title = params['title']
    connection = PG.connect(dbname: 'daily_diary_test')
    connection.exec("INSERT INTO entries (title) VALUES('#{title}')")
    redirect '/diary'
  end

  run! if app_file == $0
end
