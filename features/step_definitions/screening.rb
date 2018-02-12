require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code
Then("check background_check") do 
  elem01 = $driver.find_element(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[1]/div/div').attribute('class')
  puts elem01
  elem02 = $driver.find_element(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[2]/div/div').attribute('class')
  puts elem02
  elem03 = $driver.find_element(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[3]/div/div').attribute('class')
  puts elem03
  elem04 = $driver.find_element(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[4]/div/div').attribute('class')
  puts elem04
  elem05 = $driver.find_element(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[5]/div/div').attribute('class')
  puts elem05
  elem06 = $driver.find_element(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[6]/div/div').attribute('class')
  puts elem06
  elem07 = $driver.find_element(:xpath ,'html/body/div[1]/div/main/div/div/div/table/tbody/tr[1]/td[3]').text
  puts elem07

  if ((elem01 != "") || (elem02 != "") || (elem03 != "") || (elem04 != "") || (elem05 != "") || (elem06 != "")) & (elem07 == "Screening")
  puts "\n\n\t######  Running all features   ######\n\n" 
  puts "\n\n\t######  Test is also successful  ######\n\n" 
  elsif (elem01 == "check-styling passed") & (elem02 == "check-styling passed") & (elem03 == "check-styling passed") & (elem04 == "check-styling passed") & (elem05 == "check-styling passed") & (elem06 == "check-styling passed") & (elem07 == "Suitable")
  puts "\n\n\t######  Running all features   ######\n\n" 
  puts "\n\n\t######  Test is also successful  ######\n\n"
  elsif ((elem01 == "check-styling pending-results") || (elem02 == "check-styling pending-results") || (elem03 == "check-styling pending-results") || (elem04 == "check-styling pending-results") || (elem05 == "check-styling pending-results") || (elem06 == "check-styling pending-results")) & (elem07 == "Pending")
  final_status = "Pending"
  puts "\n\n\t######  Running all features   ######\n\n" 
  puts final_status     
  puts "\n\n\t######  Since this is successful the Test is also successful  ######\n\n" 
  end
end