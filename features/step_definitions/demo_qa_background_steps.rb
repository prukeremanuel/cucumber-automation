When /^I click the "([^\"]*)" button$/ do |menu|
  @demo_qa_home_page = DemoQAHomePage.new(@browser)
  @demo_qa_home_page.click_on_menu(menu)
end

Then /^I see the "([^\"]*)" page title$/ do |title|
  @demo_qa_selectable_page = SelectablePage.new(@browser)
  @demo_qa_selectable_page.is_page_title_displayed(title)
end

Given /^I click on the Default functionality button$/ do
  @demo_qa_selectable_page.click_default_func
end

When /^I select "([^\"]*)"$/ do |option|
  @demo_qa_selectable_page.click_on_item(option)
end


Then /^I see the "([^\"]*)" is selected$/ do |item|
  @demo_qa_selectable_page.is_option_selected(item)
end


Given /^I click on the display as grid button$/ do
  @demo_qa_selectable_page.click_display_as_grid
end
