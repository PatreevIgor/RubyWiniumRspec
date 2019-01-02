require 'rspec'
require 'selenium-webdriver'

describe "True of false tests" do
    it "thes test will be true" do
      caps = Selenium::WebDriver::Remote::Capabilities.new
      caps['app'] = 'C:/windows/system32/calc.exe'
      driver = Selenium::WebDriver.for :remote, url: 'http://localhost:9999', desired_capabilities: caps
      calc = driver.find_element(:class_name =>'CalcFrame')
      calc.find_element(:name => '1').click      # Clicks Button 1
      calc.find_element(:name => 'Сложение').click    # Clicks the '+'
      calc.find_element(:name => '2').click      # Clicks Number 2
      calc.find_element(:name => '3').click      # Clicks Number 3
      calc.find_element(:name => 'Равно').click # clicks equal sign '='

      expect(1).to eq(1)
    end
end
