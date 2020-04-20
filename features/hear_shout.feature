Feature: Hear Shout

  Shouts have a range of up to 1000m

  Scenario: In range shout is heard
    Given Lucy is at 0, 0
    And Sean is at 0, 900
    When Sean shouts
    Then Lucy should hear Sean

  Scenario: Out of range shout is not heard
    Given Lucy is at 0, 0
    And Sean is at 800, 800
    When Sean shouts
    Then Lucy should hear nothing

  Scenario: Really out of range shout is not heard
    Given Lucy is at 0, 0
    And Sean is at 1600, 800
    When Sean shouts
    Then Lucy should hear nothing
