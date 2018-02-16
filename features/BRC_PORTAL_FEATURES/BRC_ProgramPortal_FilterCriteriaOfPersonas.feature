Feature: BRC_ProgramPortal_FilterCriteriaOfPersonas

Scenario:    BRC Applicantion Portal Account Registration
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 3 sec
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 2 sec
             And I click on element having name "button"
             And I wait for 3 sec             
Scenario:    Filter Search Criteria submission status Pending             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec             
             Then I select "Pending" option by text from dropdown having id "status"              
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 3 sec
             Then check pendingdata    
             Then check pendingdata_negative
             And I wait for 2 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"             
             And I wait for 2 sec
             Then I click on link having text "Reset All Filters"                          
             And I wait for 2 sec
Scenario:    Filter Search Criteria submission status Complete            
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"             
             And I wait for 2 sec             
             Then I select "Complete" option by text from dropdown having id "status"                           
             And I wait for 3 sec             
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 2 sec             
             Then check submissioncompleteddata    
             Then check submissioncompleteddata_negative    
             And I wait for 2 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"      
             And I wait for 2 sec                                                           
             Then I click on link having text "Reset All Filters"
             And I wait for 5 sec                                               
Scenario:    Filter Search Criteria submission Suitability Unknown
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Unknown" option by text from dropdown having id "suitability"                           
             And I wait for 3 sec             
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 3 sec                                                           
             Then check submissionsuitabilityunknown    
             Then check submissionsuitabilityunknown_negative    
             And I wait for 3 sec                                                           
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Suitability Suitable
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Suitable" option by text from dropdown having id "suitability"                           
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 2 sec                                               
             Then check submissionsuitabilitysuitable    
             Then check submissionsuitabilitysuitable_negative                 
             And I wait for 2 sec                                                            
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                  
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Suitability Not-Suitable                                      
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Not Suitable" option by text from dropdown having id "suitability"                           
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"
             And I wait for 2 sec                                               
             Then check submissionsuitabilitynotsuitable    
             Then check submissionsuitabilitynotsuitable_negative                 
             And I wait for 2 sec                                                                         
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"      
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Role Employee             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                               
             Then I select "Employee" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 2 sec                                               
             Then check submissionroleemployee
             Then check submissionroleemployee_negative                 
             And I wait for 2 sec                                                                                      
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Role Volunteer-Intern                         
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"    
             And I wait for 3 sec                                                
             Then I select "Volunteer/Intern" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 2 sec                                               
             Then check submissionrolevolunteer
             Then check submissionrolevolunteer_negative                 
             And I wait for 2 sec                                                                                      
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Role Foster Parent                                      
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"  
             And I wait for 3 sec                                                             
             Then I select "Foster Parent" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 2 sec                                               
             Then check submissionroleFoster
             Then check submissionroleFoster_negative                 
             And I wait for 2 sec                                                                                      
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Role Household Member                                                   
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i" 
             And I wait for 3 sec                                                            
             Then I select "Household Member" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 2 sec                          
             Then check submissionroleHousehold
             Then check submissionroleHousehold_negative                              
             And I wait for 2 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Role In Home Caregiver                                          
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"          
             And I wait for 3 sec                                                                                      
             Then I select "In Home Caregiver" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 2 sec                          
             Then check submissionroleCaregiver
             Then check submissionroleCaregiver_negative                              
             And I wait for 2 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Role In Relative Caregiver
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i" 
             And I wait for 3 sec                                                            
             Then I select "Relative Caregiver" option by text from dropdown having id "role" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 2 sec                          
             Then check submissionroleRelativegiver
             Then check submissionroleRelativegiver_negative                                           
             And I wait for 2 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                   
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Consent Yes                                                                    
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"     
             And I wait for 3 sec                                                                                      
             Then I select "Yes" option by text from dropdown having id "consent" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission Consent No                                                                                
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "consent" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                          
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission finger Print scheduled Yes 
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "Yes" option by text from dropdown having id "f_print_scheduled" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                          
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission finger Print scheduled No
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                     
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "f_print_scheduled"     
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                                                             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission finger Print Processed Yes
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "Yes" option by text from dropdown having id "f_print_processed" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"                                                                          
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission finger Print Processed Yes
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec             
             Then I select "No" option by text from dropdown having id "f_print_processed" 
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"             
             And I wait for 3 sec
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                          
             And I wait for 3 sec                                              
             Then I click on link having text "Reset All Filters"
Scenario:    Filter Search Criteria submission By Application Dates
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"                                    
             And I wait for 3 sec          
             Then check datevalues             
             And I wait for 3 sec
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button" 
             And I wait for 3 sec             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"
             And I wait for 3 sec                                       
             Then I click on link having text "Reset All Filters"
             And I wait for 3 sec             
Scenario:    Filter Search Criteria submission By DOB Dates             
             Then I click on element having xpath "//*[@id='main-display']/div[2]/div[1]/form/div/i"
             And I wait for 3 sec             
             Then check datevaluesforapp
             And I wait for 3 sec          
             And I click on element having xpath "//*[@id='main-display']/div[3]/div/form/div[18]/button"         
             And I wait for 3 sec       
             Then I click on element having class "sign-out-link"     
             And I wait for 3 sec                          