Feature: brc_applicant_portal

Scenario:    Login to BRC Applicant Portal and List
             Given I navigate to "https://brc-portal.herokuapp.com/users/sign_in"
             And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
             And I enter "rnityakalyanam2017!" into input field having id "user_password"
             When I click on element having name "commit"         
             Then element having xpath "(html/body/div/div[2]/main/div[1]/div[1]/span[1])" should have text as "BRC PROGRAM PORTAL"                          
             Then check suitable             