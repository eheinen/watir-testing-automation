Given(/^I am on WatirExamplePage$/) do
  visit_page WatirExamplePage
  @watir_example_page = WatirExamplePage.new(@browser)
end

When(/^I fill the form$/) do
  @watir_example_page.fill_form()
end

When(/^I click on submit$/) do
  @watir_example_page.submit
end

Then(/^I should see the message "([^"]*)"$/) do |message|
  @browser.text.should include(message)
end
