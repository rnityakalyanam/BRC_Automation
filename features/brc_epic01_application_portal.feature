Feature: brc_epic01_application_portal

Scenario:    BRC Applicantion Portal Account Registration
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 5 sec                        
             When I click on link having text "CONTACT"
             Then element having xpath "(html/body/div/div[2]/main/div/div[1]/div/a[2])" should have partial text as "CONTACT"            
             And I wait for 5 sec                          
             When I click on link having text "REGISTER"
             Then element having xpath "(html/body/div/div[2]/main/div/div[1]/div/a[1])" should have partial text as "REGISTER"                         
             And I wait for 5 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 5 sec
             Then element having class "roster-text" should have text as "/   Applicants"
             Then element having class "user-name" should have text as "Ramadurai Nityakalyanam" 
             Then element having class "requestor-name" should have text as "Bright Horizons" 
             Then element having class "requestor-type" should have text as "Foster Care Agency"                           
             Then link having text "Name" should be present 
             Then link having text "DOB" should be present 
             Then link having text "Request ID" should be present 
             Then link having text "Role" should be present 
             Then link having text "Application Created" should be present 
             Then link having text "Consent" should be present 
             Then link having text "Fprint Processed" should be present 
             Then link having text "Provisionally Approved" should be present              
             Then link having text "Submission Status" should be present              
             Then link having text "Suitability" should be present                
             Then I scroll to end of page                        
             Then I scroll to top of page
             When  I enter "Ardath Koch" into input field having id "text"             
             And I click on element having name "button"
             And I wait for 5 sec                                                    
             Then link having text "Name" should be present 
             Then link having text "DOB" should be present 
             Then link having text "Request ID" should be present 
             Then link having text "Role" should be present 
             Then link having text "Application Created" should be present 
             Then link having text "Consent" should be present              
             Then link having text "Fprint Processed" should be present              
             Then link having text "Provisionally Approved" should be present 
             Then link having text "Submission Status" should be present              
             Then link having text "Suitability" should be present 
             And I wait for 5 sec                                                    
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec
             When I click on link having text "Forgot Password"
             And I wait for 3 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I wait for 3 sec
             Then I click on element having name "commit"             
             And I wait for 3 sec
             
             