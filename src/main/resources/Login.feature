 #senha git 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
#Author: your.email@your.domain.com//////
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#@tag1
Feature: Functionality: Log into the system with correct username and password
I want the user to provide the correct username and password to be able to be logged into the system

  @LoginWithSuccess
  Scenario: How user want loggin in the system with success
    Given How user access a url http://www.kamaleon.com.br/homologacao
    When a page open
    Then a user must provides a Login == 'natanael' and Password =='246810' 
    And the user click the button Enter
    And the system redirect for the page of user logged in the system
    Then now  a user is logged in the system
    
      
      | variables  | value | 
      | Login      |     5 | 
      | Senha      |     7 | 
   @Status 
  @LoginInvalid
    Scenario: How user want loggin in the system with user invalid 
    Given How user must access a url http://www.homologacao.com.br/homologacao
    And the user must provide a Login=='gabriel' and Password=='246810'
    Then the system return a messenger " Aviso! Login não pode ser efetuado. Verifique seu login e senha."
    

     
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
 
 
 @PasswordInvalid
    Scenario: How user want loggin in the system with user invalid 
    Given How user must access a url http://www.homologacao.com.br/homologacao
    And the user must provide a Login=='gabriel' and Password=='246810'
    Then the system return a messenger " Aviso! Login não pode ser efetuado. Verifique seu login e senha."
    

     
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
 
 
 
  
 @LoginValid-And-PasswordInvalid
    Scenario: How user want loggin in the system with user invalid and password valid 
    Given How user must access a url http://www.homologacao.com.br/homologacao
    And the user must provide a Login=='natanael' and Password=='247412'
    Then the system return a messenger " Aviso! Login não pode ser efetuado. Verifique seu login e senha."
    

     
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
      
      
      
      
      
      
 
  
 @LoginInvalid-And-PassworValid
    Scenario: How user want loggin in the system with user invalid and password valid 
    Given How user must access a url http://www.homologacao.com.br/homologacao
    And the user must provide a Login=='eduardo' and Password=='246810'
    Then the system return a messenger " Aviso! Login não pode ser efetuado. Verifique seu login e senha."
    

     
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
      
      
      
      
      
 
  
 @Login-And-PassworInValid
    Scenario: How user want loggin in the system with user invalid and password valid 
    Given How user must access a url http://www.homologacao.com.br/homologacao
    And the user must provide a Login=='Rafael' and Password=='246811'
    Then the system return a messenger " Aviso! Login não pode ser efetuado. Verifique seu login e senha."
    

     
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |