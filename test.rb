require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Then("check test") do
 i = 0
 j = 0
 loop do
  elem01 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[6]/i')[i].attribute('class')
  elem02 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[7]/i')[i].attribute('class')
  elem03 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[8]/i')[i].attribute('class')  
  elem04 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[9]')[i].text  
  i += 1 
  j += 1
  if ((elem01 != "fa fa-check-circle") and (elem02 == "fa fa-check-circle"))
     elem05 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[9]')[i].text  
     puts "\n\t###  Test is not successful as column Consent should be checked before FingerPrinting is scheduled for Request ID"    
     puts elem05
   break 
  end
  if (i == 20)
    break      
  end   
  sleep 2
 end
end