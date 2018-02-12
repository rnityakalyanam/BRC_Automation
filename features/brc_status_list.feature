Feature: brc_status_list

 Scenario:  Login to BRC and List All Desired Objects Postive Case for Boiler Plate Text
            Given I navigate to "https://brc-viewer.herokuapp.com/users/sign_in"
            And I enter "ramadurai.nityakalyanam@mass.gov" into input field having id "user_email"
            And I enter "rnityakalyanam2017!" into input field having id "user_password"
            And I click on element having name "commit"
            Then element having xpath "(html/body/div[1]/div/main/div/form/div[1]/div[1]/h1)" should have text as "Applicants"
            And I wait for 20 sec
            When  I enter "Rebecca" into input field having id "search-field"
            And I click on element having id "search-btn"
            And I wait for 5 sec
            Then element having xpath "(html/body/div[1]/div/main/div/div/div/table/tbody/tr[1]/td[3])" should have text as "Screening"
            And I wait for 20 sec
            Then I close browser