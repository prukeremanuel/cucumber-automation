class SelectablePage

  def initialize(browser)
    @browser = browser
    @actions_helper = ActionsHelper.new(@browser)
  end

  def is_page_title_displayed(expected)
    actions_helper.is_element_displayed(page_title, expected)
  end

  def click_default_func
    actions_helper.click_on_element(default_functionality_tab)
  end

  def click_display_as_grid
    actions_helper.click_on_element(display_grid_tab)
  end

  def click_on_item(itemname)
    actions_helper.click_on_element(default_item(itemname))
  end

  def is_option_selected(itemname)
    @actions_helper.value_of_contains(default_item(itemname), 'class', 'ui-selected')
  end

  private

  attr_reader :browser, :actions_helper

  def page_title
    @registration_title ||= browser.find_element(class: 'entry-title')
  end

  def default_functionality_tab
    @default_functionality_tab ||= browser.find_element(xpath: '//li/a[text()="Default functionality"]/..')
  end

  def display_grid_tab
    @display_grid_tab ||= browser.find_element(xpath: '//li/a[text()="Display as grid"]/..')
  end

  def default_item(itemname)
    @default_item ||= browser.find_element(xpath: '//li[text()="' + itemname + '"]')
  end

end