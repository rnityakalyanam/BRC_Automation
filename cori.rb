require 'selenium-cucumber'
require 'selenium-webdriver'
  

# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Then("check CORI") do
 i = 0
 j = 0
 loop do
  $driver.find_elements(:class,"view-link")[i].click
  $driver.find_elements(:xpath,'html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[4]/div/div/if').click
  i += 1 
  j += 1
  if (i == 20)
    break      
  end 	
  sleep 2
 end
end

