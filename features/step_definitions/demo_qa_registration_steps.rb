Given /^I am on the demo QA home page$/ do
  @demo_qa_home_page = DemoQAHomePage.new(@browser)
  @demo_qa_home_page.navigate_to_home
end

When /^I click the registration button$/ do
  @demo_qa_home_page.click_registration
end

Then /^I see "([^\"]*)" page$/ do |expected|
  @demo_qa_registration_page = DemoQARegistrationPage.new(@browser)
  @demo_qa_registration_page.is_page_title_displayed(expected)
end

Given /^I am on the "([^\"]*)" page$/ do |expected|
  @demo_qa_registration_page = DemoQARegistrationPage.new(@browser)
  @demo_qa_registration_page.navigate_to_registration
  @demo_qa_registration_page.is_page_title_displayed(expected)
end

When /^I fill in the "([^\"]*)" field with "([^\"]*)"$/ do |element, firstName|
  # @action_helper = ActionsHelper.new(@browser)
  # @action_helper.send_text(@demo_qa_registration_page.first_name_field, firstName)
  @demo_qa_registration_page.fill_in_field(element, firstName)
  # @demo_qa_registration_page.fill_in_first_name(firstName)
end

And /^I fill in the last name field with "([^\"]*)"$/ do |lastName|
  @demo_qa_registration_page.fill_in_field(element, lastName)
end

And /^I select the "([^\"]*)" Material Status$/ do |materialStatus|
  @demo_qa_registration_page.select_material_status(materialStatus)
end

And /^I select the "([^\"]*)" Hobby$/ do |hobby|
  @demo_qa_registration_page.select_hobby(hobby)
end

And /^I fill in the phone number$/ do
  @demo_qa_registration_page.fill_in_phone_number
end

And /^I fill in the user name field with "([^\"]*)"/ do |username|
  @demo_qa_registration_page.fill_in_field(element, username)
end

And /^I fill in the email field with "([^\"]*)"$/ do |email|
  @demo_qa_registration_page.fill_in_field(element, email)
end

And /^I fill in the Password field$/ do
  @demo_qa_registration_page.fill_in_password
end

And /^I fill in the Password confirmation field$/ do
  @demo_qa_registration_page.fill_in_confirmation_password
end
And /^I clik on the Submit button$/ do
  @demo_qa_registration_page.click_submit
end

Then /^I see "([^\"]*)" string$/ do |message|
  @demo_qa_registration_page.is_confirmation_message_displayed(message)
end