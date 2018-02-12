Feature: brc_check_list

Scenario:    Login to BRC and List All Desired Objects Postive Case for Boiler Plate Text
             Given I navigate to "https://brc-viewer.herokuapp.com/users/sign_in"
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             When I click on element having name "commit"
             Then element having xpath "(html/body/div[1]/div/main/div/form/div[1]/div[1]/h1)" should have text as "Applicants"             
             When  I enter "rebecca" into input field having id "search-field"
             And I click on element having id "search-btn"
             And I wait for 1 sec
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[2]/a)" should have text as "Created"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[3]/a)" should have text as "Status"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[4]/a)" should have text as "Request ID"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[5]/a)" should have text as "Name"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[6]/a)" should have text as "SSN"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[7]/a)" should have text as "DOB"   
             When I click on element having id "refresh-icon"
             And I wait for 3 sec
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[2]/a)" should have text as "Created"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[3]/a)" should have text as "Status"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[4]/a)" should have text as "Request ID"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[5]/a)" should have text as "Name"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[6]/a)" should have text as "SSN"
             Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/thead/tr/th[7]/a)" should have text as "DOB"                

Scenario Outline:     Login to BRC and List Applicant status check
                      Given I navigate to "https://brc-viewer.herokuapp.com/users/sign_in"             
                      And  I enter "rebecca" into input field having id "search-field"
                      And  I click on element having id "search-btn"
                      And  I wait for 1 sec
                      Then I click on element having xpath "(html/body/div[1]/div/main/div/div/div/table/tbody/tr[1]/td[8]/div/button)"
                      And I wait for 1 sec           
                      Given element having xpath "(html/body/div[1]/div/main/div/div/div/table/tbody/tr[1]/td[3])" should have text as <presult>
                      Then  element having xpath "(html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[1]/div/div)" should not have attribute "class" with value <fprint> 
                      And element having xpath "(html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[2]/div/div)" should not have attribute "class" with value <sprint> 
                      And element having xpath "(html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[3]/div/div)" should not have attribute "class" with value <nprint> 
                      And element having xpath "(html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[4]/div/div)" should not have attribute "class" with value <cprint>
                      And element having xpath "(html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[5]/div/div)" should not have attribute "class" with value <nsprint> 
                      And element having xpath "(html/body/div[3]/div[2]/div/div[2]/div/div[2]/div/a[6]/div/div)" should not have attribute "class" with value <osprint>                     

           Examples:  
                       |presult|fprint|sprint|nprint|cprint|nsprimt|osprint|
                       |"Pending"|"check-styling passed"|"check-styling passed"|"check-styling passed"|"check-styling passed"|"check-styling passed"|"check-styling passed"|
                       |"Pending"|"check-styling pending-results"|"check-styling pending-results"|"check-styling pending-results"|"check-styling pending-results"|"check-styling pending-results"|"check-styling pending-results"|                       
                       |"Screening"|"check-styling not-applicable"|"check-styling not-applicable"|"check-styling not-applicable"|"check-styling not-applicable"|"check-styling not-applicable"|"check-styling not-applicable"|
                       |"Suitable"|"check-styling passed"|"check-styling passed"|"check-styling passed"|"check-styling passed"|"check-styling passed"|"check-styling passed"|
