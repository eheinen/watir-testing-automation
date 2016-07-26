require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :firefox
end

After do |scenario|
  begin
    if scenario.failed?
      Dir.mkdir('screenshots') unless File.directory?('screenshots')
      file_name = scenario.name + ' - ' + Time.now.strftime('%Y.%m.%d %H:%M:%S')
      screenshot = "./screenshots/#{file_name}.png"
      @browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
  ensure
    @browser.close
  end
end
