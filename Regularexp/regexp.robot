*** Variables ***
#${MY_VALUE} =  "abcd My Vaijayanthi"
#${MY_VALUE} =  "abbbc"
${MY_VALUE1} =  "abbbcbb"

*** Test Cases ***
Test Regular Ezpression
         Validate Input String  ${MY_VALUE1}



*** Keywords ***
Validate Input String
    [Arguments]  ${input1}
#    Should match Regexp   ${input}   "abcd.*"
     Should match Regexp   ${input1}   "(bb)*(a+c)*b(a+c)*(bb)*(a+c)*(bb)*"
#     Should match Regexp   ${input2}   "(a+c)*b(a+c)*(bb)*(a+c)*"
