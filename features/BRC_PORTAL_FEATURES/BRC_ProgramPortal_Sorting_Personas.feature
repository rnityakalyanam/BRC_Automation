Feature: BRC_ProgramPortal_Sorting_Personas

Scenario:    BRC Applicantion Portal Seach By Name
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 3 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 2 sec
             Then I click on element having id "staffers"
             Then element having class "user-name" should have text as "Ramadurai Nityakalyanam" 
             And I wait for 2 sec
             Then I click on element having id "applicants"
             And I wait for 2 sec

Scenario:    BRC Applicantion Portal Sort By Name Desc and Asc
             Then I click on link having text "Name"
             And I wait for 1 sec     
             Then check namebsort             
             Then I click on link having text "Name"
             And I wait for 2 sec             
             Then check nameasort          

Scenario:    BRC Applicantion Portal Sort By DOB Desc and Asc
             Then I click on link having text "DOB"
             And I wait for 1 sec     
             Then check dobbsort             
             And I wait for 2 sec             

Scenario:    BRC Applicantion Portal Sort By Request ID Desc and Asc
             Then I click on link having text "Request ID"
             And I wait for 1 sec     
             Then check reqbsort             
             Then I click on link having text "Request ID"
             And I wait for 2 sec             
             Then check reqasort

Scenario:    BRC Applicantion Portal Sort By Role Desc and Asc
             Then I click on link having text "Role"
             And I wait for 1 sec     
             Then check rolebsort             
             Then I click on link having text "Role"
             And I wait for 2 sec             
             Then check roleasort

Scenario:    BRC Applicantion Portal Sort By Submission Type Desc and Asc
             Then I click on link having text "Submission Type"
             And I wait for 1 sec     
             Then check subebsort             
             Then I click on link having text "Submission Type"
             And I wait for 2 sec             
             Then check subasort

Scenario:    BRC Applicantion Portal Sort By Application Created Date Desc and Asc
             Then I click on link having text "Application Created"
             And I wait for 1 sec     
             Then check appbsort             
             Then I click on link having text "Application Created"
             And I wait for 2 sec             
             Then check appeasort

Scenario:    BRC Applicantion Portal Sort By Consent Desc and Asc
             Then I click on link having text "Consent"
             And I wait for 1 sec     
             Then check consentbsort             
             Then I click on link having text "Consent"
             And I wait for 2 sec             
             Then check consentasort

Scenario:    BRC Applicantion Portal Sort By Fprint Processed Desc and Asc
             Then I click on link having text "Fprint Processed"
             And I wait for 1 sec     
             Then check fprintpbsort             
             Then I click on link having text "Fprint Processed"
             And I wait for 2 sec             
             Then check fprintpasort

Scenario:    BRC Applicantion Portal Sort By Provisionally Approved Desc and Asc
             Then I click on link having text "Provisionally Approved"
             And I wait for 1 sec     
             Then check provibsort             
             Then I click on link having text "Provisionally Approved"
             And I wait for 2 sec             
             Then check proviasort

Scenario:    BRC Applicantion Portal Sort By Submission Status Desc and Asc
             Then I click on link having text "Submission Status"
             And I wait for 1 sec     
             Then check substatusbsort             
             Then I click on link having text "Submission Status"
             And I wait for 2 sec             
             Then check substatuabsort

Scenario:    BRC Applicantion Portal Sort By Suitability Desc and Asc
             Then I click on link having text "Suitability"
             And I wait for 1 sec     
             Then check subsuitbsort
             Then I click on link having text "Suitability"
             And I wait for 2 sec             
             Then check subsuitasort

Scenario:    BRC Applicantion Portal Sort Logout
             And I wait for 3 sec             
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec





             