class AboutUsPage

  def initialize(browser)
    @browser = browser
    @actions_helper = ActionsHelper.new(@browser)
  end

  def is_page_title_displayed(expected)
    actions_helper.is_element_displayed(page_title, expected)
  end

  private

  attr_reader :browser, :actions_helper

  def page_title
    @registration_title ||= browser.find_element(class: 'entry-title')
  end

end