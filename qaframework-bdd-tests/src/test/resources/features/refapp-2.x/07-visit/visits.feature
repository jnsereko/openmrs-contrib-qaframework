Feature: Patient Visits management

  @selenium
  @patientVisit
  Scenario: Starting a visit
    Given user logins into the system with no initiated patient visits
    When user clicks on the find patient record app
    And user searches for the patient record
    And user clicks on the patient returned in the patient table
    Then the system loads the clinician facing patient dashboard
    And user clicks on the start visit link
    Then the system starts the patient visit

  
  @selenium
  @patientVisit
  Scenario: Adding a past visit
    Given user initiates login with patient visits
    When user clicks on the find patient record app
    And user searches for the patient record
    And user clicks on the patient returned in the patient table
    Then the system loads the clinician facing patient dashboard
    And user clicks on the add past visit link
    Then the system adds the patient past visit

  @selenium
  @patientVisit
  Scenario: Merging visits
    Given user initiates login with patient visits
    When user clicks on the find patient record app
    And user searches for the patient record
    And user clicks on the patient returned in the patient table
    Then the system loads the clinician facing patient dashboard
    And user clicks on the recent visits link in the recent visits section
    And user clicks on the actions button
    And user clicks on the merge visits link
    And user selects the available visits to be merged
    And user clicks on the merge selected visits button
    Then the system merges the visits successfully

  @selenium
  @patientVisit
  Scenario: Ending a visit
    Given user initiates login with patient visits
    When user clicks on the find patient record app
    And user searches for the patient record
    And user clicks on the patient returned in the patient table
    Then the system loads the clinician facing patient dashboard
    And user clicks on the recent visits link in the recent visits section
    And user clicks on the end visit button
    Then the system ends the visit

  @selenium
  @patientVisit
  Scenario: Search Active Visit
    #User Story: Search by patient Identifier
    Given user initiates login with patient visits
    When user clicks on the Active Visits app from the home page
    And user searches for the patient with active visit using patient Identifier
    And the system returns patient with the provided patient Identifier
    And user clicks on the patient returned with active visit
    Then the system loads the patient dashboard
    #User Story: Search by patient Id
    When user clicks on the Active Visits app from the home page
    And user searches for the patient with active visit using patient Id
    And the system returns patient with the provided patient Id
    And user clicks on the patient returned with active visit
    Then the system loads the patient dashboard
    #User Story: Search by patient name
    When user clicks on the Active Visits app from the home page
    And user searches for the patient with active visit using patient name
    And the system returns patient with the provided patient name
    And user clicks on the patient returned with active visit
    Then the system loads the patient dashboard
    #User Story: Search by patient Last seen value
    When user clicks on the Active Visits app from the home page
    And user searches for the patient with active visit using last seen value
    And the system returns patient with the provided last seen value
    And user clicks on the patient returned with active visit
    Then the system loads the patient dashboard
