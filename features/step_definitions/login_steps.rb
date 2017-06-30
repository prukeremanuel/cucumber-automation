Given /^I am on the outlook login page$/ do
  @login_page = OfficeLoginPage.new(@browser)
  @login_page.navigate_to "https://outlook.office.com/"
  #for some reason it opens two sessions of firefox
end

When /^I enter "([^\"]*)" in the username field$/ do |username|
  @login_page.fill_username(username)
end

And /^I enter "([^\"]*)" in the password field$/ do |password|
  @login_page.fill_password(password)
end

And /^I press Sign In$/ do
  @login_page.login
end

And /^I click on the first email$/ do
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  begin
    first_email = wait.until { @browser.find_element(:id, '_ariaId_22') }
    first_email.click
  end
end

And /^I click the report button$/ do
  @browser.find_element(:class, '_ariaId_19').click
end

Then /^I see the "([^\"]*)" button$/ do |expected|
  wait = Selenium::WebDriver::Wait.new(:timeout => 20)
  begin
    element = wait.until { @browser.find_element(:class => "phish-button") }
    element.text.include? expected
  end
end