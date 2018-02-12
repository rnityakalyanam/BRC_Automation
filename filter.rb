require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check filter_check") do 
  $driver.find_element(:id,"provider_type").send_keys 'Family Child Care'
  $driver.find_element(:id,"filter-btn").click
  sleep 5
  $driver.find_element(:id,"provider_type").send_keys 'FCC Assistant (Regular/Certified)'
  $driver.find_element(:id,"filter-btn").click
  sleep 5
  $driver.find_element(:id,"provider_type").send_keys 'Small Group and School Age Child Care'
  $driver.find_element(:id,"filter-btn").click
  sleep 5
  $driver.find_element(:id,"provider_type").send_keys 'Large Group and School Age Child Care'
  $driver.find_element(:id,"filter-btn").click
  sleep 5
  $driver.find_element(:id,"provider_type").send_keys 'Residential and Placement'
  $driver.find_element(:id,"filter-btn").click
  sleep 5
  $driver.find_element(:id,"provider_type").send_keys 'EEC Funded Programs'
  $driver.find_element(:id,"filter-btn").click
  sleep 5
end