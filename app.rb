require 'sinatra/base'

class DiaryManager < Sinatra::Base
  get '/' do
    "Daily Diary"
  end

  get '/new' do
    erb :new
  end

  post '/' do
    p "form data submitted to the / route"
    title = params['title']
    connection = PG.connect(dbname: 'daily_diary_test')
    connection.exec("INSERT INTO entries (title) VALUES('#{title}')")
    redirect '/'
  end

  run! if app_file == $0
end
