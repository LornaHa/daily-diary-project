require 'view'

describe View do
  describe '.all' do
    it 'shows all diary entries' do
      connection = PG.connect(dbname: 'daily_diary_test')

      connection.exec("INSERT INTO entries (title) VALUES ('diary_entry_one');")
      connection.exec("INSERT INTO entries (title) VALUES ('diary_entry_two');")
      connection.exec("INSERT INTO entries (title) VALUES ('diary_entry_three');")

      expect(subject.all).to include("diary_entry_one")
      expect(subject.all).to include("diary_entry_two")
      expect(subject.all).to include("diary_entry_three")
    end
  end
end
