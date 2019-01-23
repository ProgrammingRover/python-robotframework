*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test utilizes the keywords in
...               the imported resource file.
...               [] represent the values to be entered
Resource          resource.robot

*** Test Cases ***
# Login setup
Valid Login
      Open Browser To Login Page
      Input Username      []
      Input Password      []
      Select Host         []
      Submit Credentials
      Login Page Should be Open

#[Teardown]    Close Browser
# New Referral creation
Valid newReferral
    Go To New Referral Page
    Input CallerFirst      []
    Input CallerLast       []
    Input Phone            []
    Select Hospital        []
    Input LastName         []
    Input FirstName        []
    Select RefOnVent       []
    Submit Save
    Referral Summary Page Should be Open
