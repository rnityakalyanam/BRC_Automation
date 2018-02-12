require 'selenium-cucumber'


# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code


Then("check suitable") do
 j = 0
 k = 0 
 n = 0 
 
 loop do
  x = 0
  get_row_count = $driver.find_elements(:tag_name,'tr').count()-1
  get_page_exists = $driver.find_element(:class,'pagination').text  
  puts j  
  
  elem10 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[1]')[j].text
  puts elem10  
  #if elem01 = $driver.find_elements(:xpath,"//*[@class='scrollable-table']/table/tbody/tr['+k+']/td[6]//*[@class='fa fa-circle-thin']")[j]
  
  #elem01 = Array.new(9) 
  #elem01 = $driver.find_elements(:xpath,'//*[@id="main-display"]/div[2]/div[2]/div/table/tbody/tr["+n+"]/td[6]/i')
  #elem01 = $driver.find_elements(:xpath,"//*[@class='scrollable-table']/table/tbody/tr['+k+']/td[6]//*[@class='fa fa-circle-thin']")
  elem01 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[9]')
  #elem01.each do |elem11|   
  # puts elem11.attribute('instance')
  #  break
  # end

  #elem02 = $driver.find_element(:xpath,'//*[@id="main-display"]/div[2]/div[2]/div/table/tbody/tr["+n+"]/td[6]/i').attribute('class')
  #puts elem02
  
  
  #elem01 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[6]')[j].text
  #elem01 = $driver.find_elements(:css,'div.scrollable-table tr:nth-child(n+1) td:nth-child(6) aria-label')[j]
  #puts elem01
  #elem01 = $driver.find_elements(:css,'div.scrollable-table tr:nth-child(n+1) td:nth-child(6) aria-label')[j]
  #elem01 = $driver.find_elements(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr['+k+']/td[6]/button/i")[j]
  #puts elem01
  #elem02 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[7]/button/i')[j]
  #puts elem02
  #elem03 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[8]/button/i')[j]
  #$driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[1]')[j].click  
  #sleep 1
  #$driver.navigate.back;
  #puts elem03
  #elem04 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[9]')[j].text
  #puts elem04
  #if ((elem01 != "fa fa-check-circle") and (elem02 == "fa fa-check-circle"))
  #   elem05 = $driver.find_elements(:xpath,'html/body/div/div[2]/main/div[2]/div[2]/div/table/tbody/tr["+k+"]/td[3]')[j].text  
  #   puts "\n\t###  Test is not successful as column Consent should be checked before FingerPrinting is scheduled for Request ID"    
  #   puts elem05
  #end  
  #break
  if (j == 19)
     elem06 = $driver.find_element(:xpath, 'html/body/div/div[2]/main/div[2]/div[2]/div/div/ul[1]/li[3]/a').click        
     j = 0     
     k = 0
  else   
  if (j == get_row_count-1)
    puts "\n\t###  Test is successful as the program read through all the records"    
    break    
  end   
   j += 1 
   k += 1     
  end 
  sleep 1
 end
end