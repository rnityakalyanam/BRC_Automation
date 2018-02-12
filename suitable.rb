require 'selenium-cucumber'
require 'selenium-webdriver'

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Then("check suitable") do
 i = 0
 j = 0 
 loop do
  get_row_count = $driver.find_elements(:tag_name,'tr').count()-1
  get_page_exists = $driver.find_element(:class,'pagination').text
  elem01 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[6]')[i].text
  puts elem01
  elem02 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[7]')[i].text
  puts elem02
  elem03 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[8]')[i].text
  puts elem03
  elem04 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[9]')[i].text  
  puts elem04
  if ((elem01 != "fa fa-check-circle") and (elem02 == "fa fa-check-circle"))
     elem05 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+j+"]/td[3]')[i].text  
     puts "\n\t###  Test is not successful as column Consent should be checked before FingerPrinting is scheduled for Request ID"    
     puts elem05
  end  
  if (i == 19)
     elem06 = $driver.find_element(:xpath, 'html/body/div/div[2]/main/div[2]/div[2]/div/div/ul[1]/li[3]/a').click        
     i = 0     
     j = 0
     puts "link text"
     puts elem06
  else   
   if (i == get_row_count-1)
    puts "\n\t###  Test is successful as the program read through all the records"    
    break    
   end   
   puts i
   puts get_row_count
   i += 1 
   j += 1     
  end 
  
  sleep 2
 end
end
