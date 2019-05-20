require 'daily_diary'

describe DailyDiary do

  describe 'diary entry' do
    it 'allows a new entry' do
      expect(subject).to respond_to(:new_entry).with(1).argument
    end

    it 'stores a new entry' do
      entry = Entry.new
      subject.new_entry(entry)
      expect(subject.entries[0]).to eq entry
    end

  end

end

  # As a user
  # So that I can keep a daily diary
  # I want to be able to add a new Diary Entry


  # As a user
  # So that I can identify my entry in future
  # I want to give each Diary Entry a title
