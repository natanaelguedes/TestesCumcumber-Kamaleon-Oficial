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
Feature: Functionality: As the user I want to register a new order in the system
To register a new order in the system, the user must provide the correct login and password and click on the menu
Purchases->Orders->Register and the system will show a registration form.
 
  @RegisterOrderWithSuccess
  Scenario: How user want loggin in the system with success and registrar a new order in
  system 
  
    Given I as the user want to access a url http://www.kamaleon.com.br/homologacao
    When a page open
    Then a user must provides a Login == 'natanael' and Password =='246810' 
    And the user click the button Enter
     And the system redirect for the page of user logged in the system
    Then a user clicked in menu purchases->order->Register
    Then must clicked in magnifying glass to select a provider 
    When clicked in magnifying glass , the system open will appear a window for liste 
    a providers. In this window,  go will show a registration form with a  text fields: Name,
    Name fantasy,CPF and CNPJ. Too a system go will show three fields selects, a for the type,
    other for brand  a text field for status.
    And clicked in button Filter.
    Then a system go will show a list with a name and 	CPF/CNPJ and next to a icon for select
    And a user click on the icon for select a record.
    Then a system select a provider.
    And below, the system show a  select for a user choose a option yes or no for a field
    brands of provider.
    And further down, a system displays the field select for a participating stores with a business unit.    
    Then a user click on select a bussiness unit
    And below, a system display a list an store participants with the  código, the sigla  and a store, and a checkbox
    And below, a system display the field text: Responsável, a fields select for  fields: Fretes,IPI Incluso, Remarca Produtos.
    Then the user select a option for o Frete, IPI Incluso e Remarca Produtos
    And more below, a system dysplay an select for cond.Pagamento(ao lado two icons,+ and icon "atualizar"
    And below, a user insert the date initial and a end.
    And below , a system display, a text "Adicionar Produtos ao Pedido" with a oito selects, 
    And one for: Group,Subfamilia,Material,Posse, Familia, Seção,Marca,Coleção and three text fields: Ref.Fornecedor,Código and Name.
    Código and Nome. The system display a button Filtrar.
    Then the user provides a Ref.Fornecedor,o Código, and the a name
    And the user clicks Filter button 
    Then in products, the system displays a list with a codigo, Referência, Grade, Und. de Compra filled and with the cost, clean cost,purcharse, sales, quantidad , Tx.Desc(%) and a icon
    checkboxs and more two icons, a printer  and  magnifying glass.
    Then and user provides: a cost, clean cost,the buy,for sales, the quantidad and the Tx.Desc and mark a or more checkboxs  
    And click the add button    
      
      | variables  | value   | 
      | Login      |natanael | 
      | Senha      |246810   | 
   @Status        success
  @LoginInvalid
    Scenario: How user want loggin in the system with user invalid 
    Given How user must access a url http://www.homologacao.com.br/homologacao
    And the user must provide a Login=='gabriel' and Password=='246810'
    Then the system return a messenger " Aviso! Login não pode ser efetuado. Verifique seu login e senha."
    

     
      | variable  | value   |
      | Login     | gabriel |
      | Senha     |  246810 |
  @status     false
 
 
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