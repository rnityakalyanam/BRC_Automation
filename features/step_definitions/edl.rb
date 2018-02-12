require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check edl") do
   dateBox = $driver.find_element(:id,"address_to_date")
   dateBox.send_keys("2017-12-31")
end