Feature: test

Scenario:    BRC Applicantion Portal Account Registration
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 2 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 2 sec
             And I click on element having name "button"
             And I wait for 2 sec             
Scenario:    Filter Search Criteria submission status Pending             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 2 sec             
             Then I select "Suitable" option by text from dropdown having id "suitability"              
             Then I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 2 sec
             Then check submissionsuitabilitysuitable
             #Then check pendingdata
             And I wait for 2 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"             
             And I wait for 2 sec
             Then I click on link having text "Reset All Filters"                          
             And I wait for 2 sec
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec                          
