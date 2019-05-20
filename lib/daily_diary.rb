require_relative 'entry'

class DailyDiary

  attr_reader :entries

  def initialize
    @entries = []
  end

  def new_entry(entry)
    @entries << entry
  end
end
