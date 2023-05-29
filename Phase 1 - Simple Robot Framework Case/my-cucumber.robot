*** Settings ***
Documentation    Farmer and the deer
Variables    variable.py

*** Test Cases ***
Pick the cucumber
    Given the farmer on the cucumber field
    When the farmer put the goods to basket
    Then the goods should be in the basket

Back to house
    Given cucumber is in the basket
    When the deer eats the goods from the basket
    Then the goods are reduced

*** Keywords ***
The farmer on the cucumber field
    Log    Farmer is on the field
The farmer put the goods to basket
    Log    There are ${x} cucumber
The goods should be in the basket
    Log    The cucumber is on basket
Cucumber is in the basket
    Log    ${x} cucumbers are on basket
The deer eats the goods from the basket
    Log    The deer eats ${y} cucumber
The goods are reduced
    Log    There are only ${x} cucumbers now