Then(/^I visit the "([^"]*)" page$/) do |page|
#  case page_name
#  when "landing"
    visit root_path
#  else
#    raise "#page_name does not exist"
#  end
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^the following articles exist$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

When(/^I am on the landing page$/) do
  visit root_path
end


When(/^I click "([^"]*)" (?:link|button)$/) do |link_or_button|
  click_link_or_button(link_or_button)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I should be on "([^"]*)" page$/) do |article_title|
  article = Article.find_by(title: article_title)
  expect(page).to have_current_path("/articles/#{article.id}")
end


Then(/^show me the page$/) do
  save_and_open_page
end