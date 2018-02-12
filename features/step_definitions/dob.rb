require 'selenium-cucumber'
require 'selenium-webdriver'
require 'faker'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check dob") do 
   dateBox = $driver.find_element(:xpath,'//*[@id="applicant_date_of_birth"]')
   faker_dates = Faker::Date.birthday(19, 65) #=> "1990-01-01"   
   dateBox.send_keys(faker_dates)
end