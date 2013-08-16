Given(/^I'm on main page$/) do
  visit "/"
end

When(/^I see the main page$/) do
  visit "/"
end

Then(/^I should see the Title for created backups$/) do
  page.should have_content('Backups')
end

Then(/^I should see the List of created backups$/) do
  pending # express the regexp above with the code you wish you had
end
