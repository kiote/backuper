Feature: OAuth authorization

  In order to have access to yandex disk
  I should be authorized through OAuth

  Scenario: Redirect to authorize page
    Given I have no token
    When I go to login page
    Then I should be redirected to yandex_autorize page

  Scenario: Obtain auth token
    Given I was redirected to yandex_authorize page
    When I redirected back
    Then redirect url should contain auth token