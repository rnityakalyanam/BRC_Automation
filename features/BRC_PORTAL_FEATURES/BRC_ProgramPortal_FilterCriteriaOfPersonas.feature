Feature: BRC_ProgramPortal_FilterCriteriaOfPersonas

Scenario:    BRC Applicantion Portal Account Registration
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 3 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 3 sec
             Then I click on element having id "staffers"
             Then element having class "user-name" should have text as "Ramadurai Nityakalyanam" 
             And I wait for 3 sec
             Then I click on element having id "applicants"
             And I wait for 3 sec
             When  I enter "Ardath Koch" into input field having id "text"
             And I click on element having name "button"
             And I wait for 3 sec             
             Then element having class "name-data" should have text as "Ardath Koch"
             And I wait for 3 sec             
             Then I click on element having class "name-data"
             And I wait for 3 sec 
             Then element having class "applicant-name" should have text as "Ardath Koch"
             And I wait for 3 sec 
             Then I click on link having text "BACK TO APPLICANTS"
             And I wait for 3 sec 
             When I clear input field having id "text"
             And I click on element having name "button"
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec             
             Then I select "Pending" option by text from dropdown having id "status"              
             Then I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 5 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"             
             And I wait for 3 sec
             Then I click on link having text "Reset All Filters"
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"             
             And I wait for 3 sec             
             Then I select "Complete" option by text from dropdown having id "status"                           
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Unknown" option by text from dropdown having id "suitability"                           
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Suitable" option by text from dropdown having id "suitability"                           
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Not Suitable" option by text from dropdown having id "suitability"                           
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Employee" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"    
             And I wait for 3 sec                                                
             Then I select "Volunteer/Intern" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"  
             And I wait for 3 sec                                                             
             Then I select "Foster Parent" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i" 
             And I wait for 3 sec                                                            
             Then I select "Household Member" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"          
             And I wait for 3 sec                                                                                      
             Then I select "In Home Caregiver" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                   
             And I wait for 3 sec                                                                                      
             Then I select "Relative Caregiver" option by text from dropdown having id "role"            
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                          
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                                                                      
             Then I select "Yes" option by text from dropdown having id "consent" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "consent" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                          
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "Yes" option by text from dropdown having id "f_print_scheduled" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                          
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                     
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "f_print_scheduled"     
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                                                             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "f_print_processed" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                                                                          
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "f_print_processed" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec          
             Then check datevalues             
             And I wait for 3 sec
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button" 
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"
             And I wait for 3 sec                                       
             Then I click on link having text "Reset All Filters"
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id="main-display"]/div[2]/div[1]/form/div/i"
             And I wait for 3 sec             
             Then check datevaluesforapp
             And I wait for 3 sec          
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"         
             And I wait for 3 sec       
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec             









             