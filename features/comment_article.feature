Feature: List articles comments and add comment on show article page
  As a visitor
  when visiting the show article page,
  I would like to see a list of comment to an article and be able to add a comment

  Background:
    Given the following articles exist
      | title                | content                          | author |
      | A breaking news item | Some really breaking action      | Thomas |
      | Learn Rails 5        | Build awesome rails applications | Amber  |

    Given the following article comments exist
      | title          | content                               | author      |
      | Learn Rails 5  | That is some really good reading!     | TheDude     |
      | Learn Rails 5  | Rails is so cool, it's almost poetic! | Rails4Life  |

  Scenario: Viewing list of articles on application's landing page
    When I am on the article "Learn Rails 5" page
    Then I should see "Learn Rails 5"
    And I should see "Rails is so cool, it's almost poetic!"
    When I fill in "Comment" with "Any news about Rails 6? Can't wait to read all about it!"
    And I fill in "Name" with "Rails4Life"
    And I fill in "email" with "rails4life@therailsdude.io"
    And I click "Save Comment" button
    Then I should see "Your message was successfully saved!"

  Scenario: Viewing list of articles on application's landing page
    When I am on the article "Learn Rails 5" page
    When I fill in "Name" with "Rails4Life"
    And I fill in "email" with "rails4life@therailsdude.io"
    And I click "Save Comment" button
    Then I should see "Your message failed to be saved!"