require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check fupload01") do
#$driver.find_element(:name,'document[file]').send_keys("C:\\testing.txt")	
$driver.find_element(:id,'filestyle-1').send_keys("C:\\testing.txt")
end