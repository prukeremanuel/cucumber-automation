When /^I click on the ([^\"]*) menu$/ do |menu|
  @demo_qa_home_page = DemoQAHomePage.new(@browser)
  @demo_qa_home_page.click_on_menu(menu)
end

Then /^I see the ([^\"]*)$/ do |title|
  @demo_qa_home_page.is_page_title_displayed(title)
end