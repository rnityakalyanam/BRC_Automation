Feature: brc_applicant_portal_suitability

Scenario:    Login to BRC Applicant Portal and List
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             When I click on element having name "commit"         
             Then element having xpath "(html/body/div/div[2]/main/div[1]/div[1]/span[1])" should have text as "BRC PROGRAM PORTAL"                          
             Then check suitable             

Scenario:    Login to BRC Applicant Portal and List
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             When I click on element having id "applicants"
             And I enter "Ardath Koch" into input field having id "text"
             And I click on element having name "button"
             And I wait for 1 sec
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[1]/a)" should have text as "Name"
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[2]/a)" should have text as "DOB"
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[3]/a)" should have text as "Request ID"
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[4]/a)" should have text as "Role"
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[5]/a)" should have text as "Request Type"
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[6]/a)" should have text as "Request Date"
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[7]/a)" should have text as "Consent"             
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[8]/a)" should have text as "Fprint Scheduled"                          
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[9]/a)" should have text as "Fprint Processed"                          
             Then element having xpath "(html/body/div/div[2]/main/div[2]/div[2]/table/tbody/tr/th[10]/a)" should have text as "Suitability Finding"                                                    
             And I wait for 2 sec    
             Then I scroll to end of page
             And I wait for 2 sec                 
             Then element having xpath "('html/body/div/div[2]/main/div[2]/div[2]/div/div/div/div/span')" should have text as "Results Per Page"
             And I wait for 1 sec

Scenario:    BRC Applicant Page Scroll
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             And I wait for 1 sec             
             When I click on element having id "applicants"             
             Then I scroll to end of page
             And I wait for 2 sec                 
             Then element having xpath "('html/body/div/div[2]/main/div[2]/div[2]/div/div/div/div/span')" should have text as "Results Per Page"
             And I wait for 1 sec

Scenario:    BRC Applicant Create an Account as Employee
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             And I wait for 1 sec             
             Then I click on element having id "new_submission"             
             And I wait for 1 sec             
             When radio button having id "applicant_applicant_submissions_attributes_0_role_volunteer" should be unselected
             And radio button having id "applicant_applicant_submissions_attributes_0_role_intern" should be unselected                          
             And radio button having id "applicant_applicant_submissions_attributes_0_role_employee" should be selected
             Then I wait for 1 sec             

Scenario:    BRC Applicant Create an Account as Volunteer
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             And I wait for 1 sec             
             Then I click on element having id "new_submission"             
             And I wait for 1 sec             
             When radio button having id "applicant_applicant_submissions_attributes_0_role_employee" should be unselected             
             And radio button having id "applicant_applicant_submissions_attributes_0_role_intern"  should be unselected             
             And radio button having id "applicant_applicant_submissions_attributes_0_role_volunteer" should be selected
             Then I wait for 1 sec                          

Scenario:    BRC Applicant Create an Account as Intern
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             And I wait for 1 sec             
             Then I click on element having id "new_submission"             
             And I wait for 1 sec             
             When radio button having id "applicant_applicant_submissions_attributes_0_role_volunteer" should be unselected
             And radio button having id "applicant_applicant_submissions_attributes_0_role_employee" should be unselected                                       
             And radio button having id "applicant_applicant_submissions_attributes_0_role_intern" should be selected
             Then I wait for 1 sec

