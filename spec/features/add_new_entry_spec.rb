feature "Adding Diary Entries" do
  scenario "A user can add a new diary entry" do
    visit('/new')
    fill_in('title', with: 'entry_one',)
    click_button('Submit')

    expect(page).to have_content 'entry_one'
  end
end
