require 'spec_helper'

feature "Viewing Diary Entries" do
  scenario "A user can see diary entries" do
    connection = PG.connect(dbname: 'daily_diary_test')

    connection.exec("INSERT INTO entries (title) VALUES('diary_entry_one');")
    connection.exec("INSERT INTO entries (title) VALUES('diary_entry_two');")
    connection.exec("INSERT INTO entries (title) VALUES('diary_entry_three');")

    visit('/diary')

    expect(page).to have_content "diary_entry_one"
    expect(page).to have_content "diary_entry_two"
    expect(page).to have_content "diary_entry_three"
  end
end
