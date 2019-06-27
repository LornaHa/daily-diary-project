require 'pg'

class View

  def all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'daily_diary_test')
    else
      connection = PG.connect(dbname: 'daily_diary')
    end

    result = connection.exec("SELECT * FROM entries")
    result.map { |entry| entry['title'] }

    # ["diary_entry_one", "diary_entry_two", "diary_entry_three"]
  end
end
