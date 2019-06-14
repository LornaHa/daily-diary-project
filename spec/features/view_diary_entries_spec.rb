feature "Viewing Diary Entries" do
  scenario "A user can see diary entries" do
    visit('/view')
    expect(page).to have_content "diary_entry_one"
    expect(page).to have_content "diary_entry_two"
    expect(page).to have_content "diary_entry_three"
  end
end
