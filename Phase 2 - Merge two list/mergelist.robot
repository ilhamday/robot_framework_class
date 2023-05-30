*** Settings ***
Library    Collections

*** Test Cases ***
Test case 1
    Merge two list
    Pick some items from the list
    
*** Keywords ***
Merge two list
    @{LIST3}    Create List

    FOR    ${alphabet}    IN    @{LIST1}
        FOR    ${number}    IN    @{LIST2}
            Append To List    ${LIST3}    ${alphabet}${number}    
        END
        
    END

    Log    ${LIST3}    # ['a1', 'a2', 'a3', 'a4', 'b1', 'b2', 'b3', 'b4', 'c1', 'c2', 'c3', 'c4', 'd1', 'd2', 'd3', 'd4']
    Set Global Variable    ${LIST3}
    
Pick some items from the list
    ${num}    Get Length    ${LIST3}    # declare num variable and fill it with the length of the list

    FOR    ${index}    IN RANGE    0    ${num}    5    # from 0 until length of LIST3, with 5 steps
        Append To List    ${LIST4}    ${LIST3}[${index}]
    END

    Log    ${LIST4}    # ['a1', 'b2', 'c3', 'd4']

*** Variable ***
@{LIST1}    a    b    c    d
@{LIST2}    1    2    3    4
@{LIST4}    # declare a list