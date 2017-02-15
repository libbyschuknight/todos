require "rails_helper"

feature "User completes todo" do
  scenario "successfully" do
    sign_in
    todo = Todo.create!(title: "Buy milk", email: "someone_else@example.com")

    visit "/todos/#{todo.id}"

    expect(page).to have_css ".completed"
  end
end
