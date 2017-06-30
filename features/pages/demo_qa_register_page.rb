class DemoQARegistrationPage

  def initialize(browser)
    @browser = browser
    @actions_helper = ActionsHelper.new(@browser)
    @current_milis = Time.now.to_i.to_s
    @random = Random.new.rand(1000000000..9999999999)
    end

  def navigate_to_registration
    actions_helper.navigate 'http://demoqa.com/registration/'
  end

  def is_page_title_displayed(expected)
    actions_helper.is_element_displayed(page_title, expected)
  end

  def fill_in_field(element, text)
    case element
      when "first name"
        actions_helper.send_text(first_name_field, text)
      when "last name"
        actions_helper.send_text(last_name_field, text)
      when "username"
        actions_helper.send_text(username_field, text + @current_milis)
      when "email"
        actions_helper.send_text(email_field, text + @current_milis + '@demo.com')
      else
        puts "There is no input field for: " + element
    end
  end

  # def fill_in_first_name(firstName)
  #   actions_helper.send_text(first_name_field, firstName)
  # end
  #
  # def fill_in_last_name(lastName)
  #   actions_helper.send_text(last_name_field, lastName)
  # end

  def select_material_status(materialStatus)
    actions_helper.click_on_element(material_status(materialStatus))
  end

  def select_hobby(hobby)
    actions_helper.click_on_element(hobby(hobby))
  end

  def fill_in_phone_number
    actions_helper.send_text(phone_number_field, @random)
  end

  # def fill_in_username(username)
  #   actions_helper.send_text(username_field, username + @current_milis)
  # end
  #
  # def fill_in_email(input)
  #   actions_helper.send_text(email_field, input + @current_milis + '@demo.com')
  # end

  def fill_in_password
    actions_helper.send_text(password_field, @random)
  end

  def fill_in_confirmation_password
    actions_helper.send_text(password_confirmation_field, @random)
  end

  def click_submit
    actions_helper.click_on_element(submit_button)
  end

  def is_confirmation_message_displayed(message)
    actions_helper.is_element_displayed(confirmation_message, message)
  end

  attr_reader :first_name_field

  private

  attr_reader :browser, :actions_helper

  def page_title
    @registration_title ||= browser.find_element(class: 'entry-title')
  end

  def first_name_field
    @first_name_field ||= browser.find_element(id: 'name_3_firstname')
  end

  def last_name_field
    @last_name_field ||= browser.find_element(id: 'name_3_lastname')
  end

  def material_status(status)
    @material_status ||= browser.find_element(xpath: '//input[@value="' + status + '"]')
  end

  def hobby(hobby)
    @hobby ||= browser.find_element(xpath: '//input[@value="' + hobby + '"]')
  end

  def phone_number_field
    @phone_number_field ||= browser.find_element(id: 'phone_9')
  end

  def username_field
    @username_field ||= browser.find_element(id: 'username')
  end

  def email_field
    @email_field ||= browser.find_element(id: 'email_1')
  end

  def password_field
    @password_field ||= browser.find_element(id: 'password_2')
  end

  def password_confirmation_field
    @password_confirmation_field ||= browser.find_element(id: 'confirm_password_password_2')
  end

  def submit_button
    @submit_button ||= browser.find_element(xpath: '//input[@value="Submit"]')
  end

  def confirmation_message
    @confirmation_message ||= browser.find_element(class: 'piereg_message')
  end
end