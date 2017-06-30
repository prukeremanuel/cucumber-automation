class ActionsHelper
  def initialize(browser)
    @browser = browser
  end

  def click_on_element(element)
    element.click
  end

  def send_text(element, text)
    element.send_keys(text)
  end

  def navigate(url)
    @browser.navigate.to url
  end

  def is_element_displayed(element, expected)
    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    begin
      element = wait.until { element }
      element.text.include? expected
    end
  end

  def value_of_contains(element, attr, expected)
    element.attribute(attr).include? expected
  end
end