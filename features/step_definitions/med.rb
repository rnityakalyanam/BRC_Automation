require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check med") do
   dateBox = $driver.find_element(:id,"primary_material_expiration")
   dateBox.send_keys("2017-01-01")
end