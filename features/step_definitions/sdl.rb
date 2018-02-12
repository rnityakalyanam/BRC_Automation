require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check sdl") do
   dateBox = $driver.find_element(:id,"address_from_date")
   dateBox.send_keys("2010-01-01")
end