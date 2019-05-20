require 'daily_diary'

describe DailyDiary do

  describe 'diary entry' do
    it 'allows a new entry' do
      expect(subject).to respond_to(:new_entry).with(1).argument
    end
  end

end

  # As a user
  # So that I can keep a daily diary
  # I want to be able to add a new Diary Entry
