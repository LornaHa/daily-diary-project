require 'sinatra/base'

class DiaryManager < Sinatra::Base
  get '/' do
    "Daily Diary"
  end

  get '/view' do
    entries = ["diary_entry_one", "diary_entry_two", "diary_entry_three"]
    entries.join
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
