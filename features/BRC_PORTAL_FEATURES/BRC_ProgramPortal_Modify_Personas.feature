Feature: BRC_ProgramPortal_Modify_Personas

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
             When  I enter "Ethelene Leuschke" into input field having id "text"
             And I click on element having name "button"
             And I wait for 2 sec             
             Then element having class "name-data" should have text as "Ethelene Leuschke"
             And I wait for 2 sec             
             Then I click on element having class "name-data"
             And I wait for 2 sec 
             Then element having class "staffer-name" should have text as "Ethelene Leuschke"
             And I wait for 2 sec 
             Then element having class "status-role-title" should have text as "Employment Status"
             And I wait for 2 sec 
             Then element having class "status-role-display" should have text as "Provisionally Hired"
             And I wait for 2 sec 
             Then I click on link having text "Edit Personal Info"
             And I wait for 2 sec 
             Then I clear input field having id "applicant_maiden_name"
             Then I enter "Margret" into input field having id "applicant_maiden_name"             
             Then I scroll to element having id "applicant_ssn"
             And I clear input field having id "applicant_ssn"
             And I wait for 2 sec 
             Then I enter "332211" into input field having id "applicant_ssn"
             Then I scroll to element having class "submit-changes-btn"
             And I wait for 2 sec 
             Then I click on element having class "submit-changes-btn"             
             And I wait for 2 sec 
             Then I click on link having text "Edit Addresses"
             And I wait for 2 sec 
             Then I clear input field having id "mailing_city"             
             Then I clear input field having id "mailing_zip_code"             
             Then I enter "Boston" into input field having id "mailing_city"
             Then I enter "Massachusetts" into input field having id "mailing_state"
             Then I enter "02108" into input field having id "mailing_zip_code"
             And I wait for 2 sec 
             Then I scroll to element having class "submit-changes-btn"                               
             Then I click on element having class "submit-changes-btn"

Scenario:    BRC Applicantion Portal Sort Logout
             And I wait for 3 sec             
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec







             