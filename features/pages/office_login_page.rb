
class OfficeLoginPage


  def initialize(browser)
    @browser = browser
    @actions_helper = ActionsHelper.new(@browser)
  end

  def fill_username(username)
    actions_helper.send_text(username_field, username)
  end

  def fill_password(password)
    actions_helper.send_text(password_field, password)
  end

  def login
    actions_helper.click_on_element(login_button)
    actions_helper.click_on_element(login_button)
  end

  def navigate_to(link)
    browser.navigate_to_home.to link
  end

  private

  attr_reader :browser, :actions_helper

  def username_field
    @username_field ||= browser.find_element(id: 'cred_userid_inputtext')
  end

  def password_field
    @password_field ||= browser.find_element(id: 'cred_password_inputtext')
  end

  def login_button
    @login_button ||= browser.find_element(id: 'cred_sign_in_button')
  end
end