require 'selenium-cucumber'
require 'selenium-webdriver'
require 'watir'


# Do Not Remove This File
# Add your custom steps here
# $driver is instance of webdriver use this instance to write your custom code

Then ("check countsqldelete") do

begin
require 'pg'	

conn = PG::Connection.open("ec2-54-163-233-201.compute-1.amazonaws.com", 5432, '', '', "d3uqb1tp7k1trp", "uukxdzmvpzgmcz", "336675772472042625a7f8c1ca82044768047871323903f1ec3eabde63c9f78f")
conn.exec("delete from applicant_submissions where applicant_id in (SELECT ID FROM applicants where ID > 121);")
conn.exec("delete from aliases where applicant_id in (SELECT ID FROM applicants where ID > 121);")
conn.exec("delete from identity_materials where applicant_id in (SELECT ID FROM applicants where ID > 121);")
conn.exec("delete from applicants where id in (SELECT ID FROM applicants where ID > 121);")
rescue PG::Error => e
    puts e.message    
ensure
    conn.close if conn    
end

end

Then ("check countsql") do

begin
require 'pg'	

conn = PG::Connection.open("ec2-54-163-233-201.compute-1.amazonaws.com", 5432, '', '', "d3uqb1tp7k1trp", "uukxdzmvpzgmcz", "336675772472042625a7f8c1ca82044768047871323903f1ec3eabde63c9f78f")
result = conn.exec("select count(*) from applicant_submissions where deleted_at is null;")
result.each do |results|
  puts results
end

puts result[0]
rescue PG::Error => e
    puts e.message    
ensure
    conn.close if conn    

end

end

Then ("check namebsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[1]").text
puts @first_result
element01 = $driver.find_elements(:class,"name-data")
element01.each do |results|	
  puts results.text    
end

end

Then ("check nameasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[1]").text
puts @last_result
result = $driver.find_elements(:class,"name-data")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check dobbsort") do
$driver.find_element(:css,'#main-display > div.view-container > div.submission-table-container > table > tbody > tr > th:nth-child(2)').click
first_results = $driver.find_elements(:css,'#main-display > div.view-container > div.submission-table-container > div > table > tbody > tr > td:nth-child(2)')
first_result = first_results.map { |first_result01| puts first_result01.text }
first_resultsort = first_results.map { |first_result02| first_result02.text.delete('$').to_f }
expect(first_resultsort).to eql first_resultsort.sort.reverse

 #@first_result.each do |results|   
  # puts results.text    
end

Then ("check reqbsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[3]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results|	
  puts results.text    
end

end

Then ("check reqasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[3]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check rolebsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[4]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results|	
  puts results.text    
end

end

Then ("check roleasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[4]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check subebsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[5]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check subasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[5]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check appbsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[6]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check appeasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[6]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check consentbsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[7]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check consentasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[7]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check fprintpbsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[8]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check fprintpasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[8]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check provibsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[9]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check proviasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[9]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end

Then ("check substatusbsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[10]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check substatuabsort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[10]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end


Then ("check subsuitbsort") do
@first_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[11]").text
puts @first_result
element01 = $driver.find_elements(:class,"applicant-row")
element01.each do |results| 
  puts results.text    
end

end

Then ("check subsuitasort") do
@last_result = $driver.find_element(:xpath,"//*[@id='main-display']/div[2]/div[2]/div/table/tbody/tr[1]/td[11]").text
puts @last_result
result = $driver.find_elements(:class,"applicant-row")
result.each do |results|
  puts results.text
end

if (@first_result == @last_result)
   puts "<b>Data Not Sorted Correctly Manual Inspection is needed<b> \n"
else
   puts "<b>Both Desc and Asc Sorts are working as Desired</b> \n"
end

end
