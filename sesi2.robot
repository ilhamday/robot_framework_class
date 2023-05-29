*** Test Cases ***
# Test case List 4
#     List 4

# Test case 5
#     Memperlihatkan two

Test case 9
    ${x}    Set Variable    ${0}    #ini udah nggak perlu karena udah di for loops nya.

    FOR    ${x}    IN RANGE    0    4
        IF    ${x} == 2
            Log To Console    iya bang
        ELSE 
            Log To Console    enggak bang
        END
    END

*** Keywords ***
List 4
    @{LIST4}    Create List    ${LIST3}[0]    # membuat list baru dari list yang sudah ada
    Log    ${LIST4}

Memperlihatkan two
    Log    ${DICTIONARY.list[1]}

*** Variables ***
@{LIST3}=    1    2    3    4    5    6

${STRING}    mantap bang!!
${NUMBER}    ${1}
@{LIST}    one    two    three
&{DICTIONARY}    string=${STRING}    number=${NUMBER}    list=@{LIST}