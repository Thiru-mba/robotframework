*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
@{abc}    2 3 4 5 a b c

*** Test Cases ***
Forloop
    #  FOR    ${i}    IN RANGE    1    10+1    
    #      Log To Console    ${i}
         
    #  END

    FOR    ${i}    IN RANGE    1    10+1    
        Log    ${i}
    END
    #creating  a list

    FOR    ${i}    IN    @{abc}
        Log To Console    ${i}
        
    END
    #scalar variable
    ${name}    Set Variable    nameofteam
    #list
    ${mylist}    Create List    apple orange red 
    FOR    ${i}    IN    ${mylist}
        Log To Console    ${i}
        
    END