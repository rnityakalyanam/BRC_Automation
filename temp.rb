require 'selenium-cucumber'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Then("check suitable") do
 i = 0
 j = 0
# count = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[9]')[i].text  
 loop do
  elem01 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[6]')[i].attribute('class')
  puts elem01
  elem02 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[7]')[i].attribute('class')
  puts elem02
  elem03 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[8]')[i].attribute('class')
  puts elem03
  elem04 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[9]')[i].text  
  puts elem04
  if ((elem01 != "fa fa-check-circle") and (elem02 == "fa fa-check-circle"))
     elem05 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[3]')[i].text  
     puts "\n\t###  Test is not successful as column Consent should be checked before FingerPrinting is scheduled for Request ID"    
     puts elem05
  end  
  if (i == 20)
     elem06 = $driver.find_element(:link_text, "next").click        
     i = 0     
     j = 0
     puts "link text"
     puts elem06
  else
     i += 1 
     j += 1      
  end    
  sleep 2
 end
end
