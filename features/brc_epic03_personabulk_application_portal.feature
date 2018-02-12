Feature: brc_epic03_personabulk_application_portal

Scenario Outline:    BRC Applicantion Program Portal Application Creation
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"             
             And I wait for 1 sec                        
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             Then I click on element having name "commit"
             And I wait for 2 sec
             Then I click on element having id "new_submission"
             And I wait for 2 sec                                         
             When I click on element having xpath "//*[@id='new_applicant']/div[1]/div/label[4]/span"
             And I wait for 2 sec                                                      
             Then I enter <fname> into input field having id "applicant_first_name"
             Then I enter <lname> into input field having id "applicant_last_name"
             And I wait for 3 sec                            
             When I select radio button having xpath "//*[@id='new_applicant']/div[3]/div[1]/label[1]/i[1]"
             Then I enter <mname> into input field having id "applicant_maiden_name"
             And I wait for 3 sec               
             When I select radio button having xpath "//*[@id='new_applicant']/div[4]/div[1]/label[1]/i[1]"
             Then I enter <afname> into input field having id "applicant_aliases_attributes_0_first_name"
             And I enter <alname> into input field having id "applicant_aliases_attributes_0_last_name"
             And I enter <aemail> into input field having id "applicant_email"
             And I enter <aphone> into input field having id "applicant_phone_number"
             Then check dob
             And I enter "Boston" into input field having id "applicant_birth_place"
             And I enter "232211" into input field having id "applicant_ssn"
             And I wait for 3 sec                            
             When I select radio button having xpath "//*[@id='new_applicant']/div[8]/div/div/label[3]/i[1]"
             And I wait for 2 sec                                                
             Then I click on element having xpath "//*[@id='new_applicant']/div[9]/button"      
             And I wait for 5 sec  
             Then I enter "1 Ashburton Place" into input field having id "residential_street_1"
             Then I enter "Room 1601" into input field having id "residential_street_2" 
             Then I enter "Boston" into input field having id "residential_city"
             Then I enter "Massachusetts" into input field having id "residential_state"
             Then I enter "02108" into input field having id "residential_zip_code"
             And I wait for 3 sec  
             Then I enter "1 Ashburton Place" into input field having id "mailing_street_1"
             Then I enter "Room 1601" into input field having id "mailing_street_2" 
             Then I enter "Boston" into input field having id "mailing_city"
             Then I enter "Massachusetts" into input field having id "mailing_state"
             Then I enter "02108" into input field having id "mailing_zip_code"
             And I wait for 3 sec  
             Then check sdl
             Then check edl
             Then I enter "1 Boch Street" into input field having id "address_street_address_1"
             Then I enter "Boston" into input field having id "address_city"
             Then I enter "Massachusetts" into input field having id "address_state"
             Then I enter "02111" into input field having id "address_zip_code"
             Then I scroll to end of page
             And I wait for 1 sec       
             Then I click on element having id "mailing-residential-form-next-btn"
             And I wait for 3 sec
             Then I enter "alien_registration_receipt_card" into input field having id "material-doc-type-primary" 
             Then I enter "DOC001" into input field having id "primary_material_number" 
             Then I enter "Massachusetts" into input field having id "primary_material_state"
             Then check med
             And I wait for 3 sec  
             Then check fupload
             And I wait for 3 sec
             Then I click on element having class "submit-doc-btn-primary"
             And I wait for 3 sec
             Then I scroll to end of page                                    
             And I wait for 3 sec 
             Then I click on element having id "id-material-form-next-btn"
             And I wait for 3 sec                           
             Then check cfupload
             And I wait for 3 sec              
             Then I click on element having class "submit-doc-btn"
             And I wait for 3 sec
             Then I click on element having class "done-btn"
             And I wait for 5 sec                        