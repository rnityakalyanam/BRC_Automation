Feature: BRC_ProgramPortal_Search_Personas

Scenario:    BRC Applicantion Portal Seach By Name
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 3 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 2 sec
             Then I click on element having id "staffers"
             And I wait for 2 sec             
             Then element having class "user-name" should have text as "Ramadurai Nityakalyanam"
             And I wait for 2 sec
             Then element having class "requestor-name" should have text as "Bright Horizons"
             And I wait for 2 sec
             Then element having class "requestor-type" should have text as "Foster Care Agency"
             And I wait for 2 sec
             Then I click on element having id "applicants"
             And I wait for 2 sec
             When  I enter "Ardath Koch" into input field having id "text"
             And I click on element having name "button"
             And I wait for 2 sec             
             Then element having class "name-data" should have text as "Ardath Koch"
             And I wait for 2 sec             
             Then I click on element having class "name-data"
             And I wait for 2 sec 
             Then element having class "applicant-name" should have text as "Ardath Koch"
             And I wait for 2 sec 
             Then I click on link having text "BACK TO APPLICANTS"
             And I wait for 2 sec 
             When I clear input field having id "text"
             And I click on element having name "button"
             And I wait for 2 sec             
             Then I click on element having id "applicants"
             And I wait for 2 sec             
             
Scenario:    BRC Applicantion Portal Sort Logout
             And I wait for 3 sec             
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec







             