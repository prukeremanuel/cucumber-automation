class DemoQAHomePage

  def initialize(browser)
    @browser = browser
    @actions_helper = ActionsHelper.new(@browser)
  end

  def navigate_to_home
    actions_helper.navigate 'http://demoqa.com/'
  end

  def is_page_title_displayed(expected)
    actions_helper.is_element_displayed(page_title, expected)
  end

  def click_registration
    actions_helper.click_on_element(register_button)
  end

  def click_on_menu(menu)
    case menu
      when "About us"
        actions_helper.click_on_element(about_us_menu)
      when "Services"
        actions_helper.click_on_element(services_menu)
      when "Contact"
        actions_helper.click_on_element(contact_menu)
      when "Selectable"
        actions_helper.click_on_element(selectable_button)
    end
  end

  def click_tab(tab)
    case tab
      when "Tab 1"
        actions_helper.click_on_element(tab_button(1))
      when "Tab 2"
        actions_helper.click_on_element(tab_button(2))
      when "Tab 3"
        actions_helper.click_on_element(tab_button(3))
      when "Tab 4"
        actions_helper.click_on_element(tab_button(4))
      when "Tab 5"
        actions_helper.click_on_element(tab_button(5))
    end
  end

  private

  attr_reader :browser, :actions_helper

  def page_title
    @registration_title ||= browser.find_element(class: 'entry-title')
  end

  def register_button
    @register_button ||= browser.find_element(id: 'menu-registration')
  end

  def selectable_button
    @selectable_button ||= browser.find_element(id: 'menu-item-142')
  end

  def about_us_menu
    @about_us_menu ||= browser.find_element(id: 'menu-item-158')
  end

  def services_menu
    @services_menu ||= browser.find_element(id: 'menu-item-155')
  end

  def contact_menu
    @contact_menu ||= browser.find_element(id: 'menu-item-64')
  end

  def tab_button(nth)
    @tag_button ||= browser.find_element(id: 'ui-id-' + nth)
  end


end