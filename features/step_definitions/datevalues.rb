require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check datevalues") do
   dateBox = $driver.find_element(:xpath,'//*[@id="born_from"]')
   dateBox.send_keys("2017-01-01")
   dateBox = $driver.find_element(:xpath,'//*[@id="born_to"]')   
   dateBox.send_keys("2017-01-30")
end