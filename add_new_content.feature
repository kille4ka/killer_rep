@d7 @javascript @api @wysiwyg @user @drush

Feature: Adding nodes of all existing content types
         with basic settings


  Background:
    Given I am on "/user"
    When I fill in the following:
      | name | admin        |
      | pass | zRNnWqITN48p |
    And I press "Log in"
    Then I should be on "admin/dashboard"


  Scenario: Adding new Artikler
    When I am on "node/add"
    Then I follow "Artikler"
    And I should be on "node/add/article"
    Then I fill in the following:
      | title                       | Test article |
      | field_author[und][0][value] | author       |

    And I follow "Browse"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe
    Then I fill in "field_image_description[und][0][value]" with "Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas vestibulum mollis diam."
    And I fill in "field_teaser[und][0][value]" with "Fusce neque. Pellentesque dapibus hendrerit tortor. In consectetuer turpis ut velit. Cras dapibus. Praesent congue erat at massa."
    Then I work with "edit-body-und-0-value" WYSIWYG editor
    And I type "WYSIWYG" in "edit-body-und-0-value" WYSIWYG editor
    Then I typed "1" in the "edit-field-contact-information-und-0-nid" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished

    Then I follow "Publishing options"
    And I select "Published" from "edit-workbench-moderation-state-new"
#    And I select "Draft (Current" from "edit-workbench-moderation-state-new"
#    And I select "Needs Review" from "edit-workbench-moderation-state-new"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test article"


  Scenario: Adding new Banner element
    When I am on "node/add"
    Then I follow "Banner element"
    And I should be on "node/add/banner-element"
    Then I fill "title" with "Test banner element"
    And I follow "Browse"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe
    Then I fill in the following:
    |field_internal_title[und][0][value]|Test banner element |
    |field_image_alt_text[und][0][value]|Alt text            |
    |field_link[und][0][url]            |www.google.com      |

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test banner element"


  Scenario: Adding new Bannerlink
    When I am on "node/add"
    Then I follow "Bannerlink"
    And I should be on "node/add/bannerlink"
    Then I fill in the following:
      |title                                     |Test banner link |
      |edit-field-internal-title-und-0-value     |Test banner link |
      |edit-field-displayed-title-und-0-value    |Headline         |
      |field_image_alt_text[und][0][value]       |Alt text         |
      |edit-field-teaser-und-0-value             |Teaser           |
      |edit-field-external-link-und-0-url        |www.google.com   |

    Then I follow "Publishing options"
  #   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Headline"


  Scenario: Adding new Emne område (Subject page)
    When I am on "node/add"
    Then I follow "Emne område"
    And I should be on "node/add/subjectpage"
    Then I fill in the following:
      | title                         | Test Emne    |
      | edit-field-teaser-und-0-value | Teaser       |
    And I follow "Browse"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe
    Then I fill in "field_internal_title[und][0][value]" with "Test Emne"
    Then I typed "a" in the "edit-field-taxonomy-local-und" field and chose 1 option from autocomplete variants
    Then I typed "a" in the "edit-field-editorial-responsibility-und-0-uid" field and chose 1 option from autocomplete variants
    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Emne"


  Scenario: Adding new Faktaboks
    When I am on "node/add"
    Then I follow "Faktaboks"
    And I should be on "node/add/factbox"
    Then I fill in the following:
      | title                                  | Test factbox   |
      | edit-field-displayed-title-und-0-value | headline       |
      | edit-field-internal-title-und-0-value  | internal title |
      | edit-field-teaser-und-0-value          | preview        |
    Then I work with "edit-body-und-0-value" WYSIWYG editor
    And I type "WYSIWYG" in "edit-body-und-0-value" WYSIWYG editor
    Then  I follow "Browse"
    And I wait 3 seconds
    And I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe

    Then I fill in the following:
      |edit-field-image-description-und-0-value | Vestibulum purus quam |
      |edit-field-external-link-und-0-title     | Link                  |
      |edit-field-external-link-und-0-url       | https://favrskov.dk/  |

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test factbox"


  Scenario: Adding new Forside (Frontpage)
    When I am on "node/add"
    Then I follow "Forside"
    And I should be on "node/add/frontpage"
    Then I fill in "title" with "Test Forsida"
    Then I typed "a" in the "edit-field-taxonomy-kle-und" field and chose 1 option from autocomplete variants
    Then I typed "a" in the "edit-field-taxonomy-local-und" field and chose 1 option from autocomplete variants
    Then I fill in "field_internal_title[und][0][value]" with "Test Forsida"
    Then I typed "a" in the "edit-field-editorial-responsibility-und-0-uid" field and chose 1 option from autocomplete variants
    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Forsida"


  Scenario: Adding new Job
    When I am on "node/add"
    Then I follow "Job"
    And I should be on "node/add/job"
    Then I fill in the following:
      | title                                        | Test Job         |
      | edit-field-job-headline-und-0-value          | Headline         |
      | edit-field-job-apply-link-und-0-title        | Apply link       |
      | edit-field-job-apply-link-und-0-url          | www.google.com   |
      | edit-field-job-destination-link-und-0-title  | Destination link |
      | edit-field-job-destination-link-und-0-url    | www.google.com   |
      | edit-field-job-id-und-0-value                | 12345            |
      | edit-field-job-place-of-work-und-0-value     | Dnipro           |
      | edit-field-job-start-date-und-0-value-date   | 07-25-2017       |

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test job"


  Scenario: Adding new Kontaktoplysning
    When I am on "node/add"
    Then I follow "Kontaktoplysning"
    And I should be on "node/add/phone-book"
    Then I fill in the following:
      | title                                        | Test Kontakt     |
      | edit-field-internal-title-und-0-value        | Test Kontakt     |
      | edit-field-phone-book-phone-und-0-value      | 12345678         |
      | edit-field-phone-book-cell-phone-und-0-value | 12345678         |
      | edit-field-phone-book-email-und-0-email      | test@mail.com    |
      | edit-field-phone-book-map-link-und-0-url     | maps.google.com  |

    Then I select "Mandag" from "edit-field-opening-hours-und-0-field-day-of-week-und"
    And I fill in "edit-field-opening-hours-und-0-field-time-und-0-value" with "9.00-17.00"
    Then I press "field_opening_hours_add_more"
    And I wait until AJAX is finished
    Then I select "Onsdag" from "field_opening_hours[und][1][field_day_of_week][und]"
    And I fill in "edit-field-opening-hours-und-1-field-time-und-0-value" with "10.00-16.00"
    Then I type "test text" in "field_phone_book_stuff[und][0][value]" WYSIWYG editor

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Kontakt"


  Scenario: Adding new Nyheder
    When I am on "node/add"
    Then I follow "Nyheder"
    And I should be on "node/add/news"
    Then I fill in "title" with "Test Nyheter"
    And I follow "Browse"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe
    Then I fill in "field_image_description[und][0][value]" with "Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas vestibulum mollis diam."
    And I fill in "field_teaser[und][0][value]" with "Fusce neque. Pellentesque dapibus hendrerit tortor. In consectetuer turpis ut velit. Cras dapibus. Praesent congue erat at massa."
    Then I work with "edit-body-und-0-value" WYSIWYG editor
    And I type "WYSIWYG" in "edit-body-und-0-value" WYSIWYG editor
    Then I typed "a" in the "edit-field-taxonomy-kle-und" field and chose 1 option from autocomplete variants

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Nyheter"


  Scenario: Adding new Selvbetjening
    When I am on "node/add"
    Then I follow "Selvbetjening"
    And I should be on "node/add/self-service"
    Then I fill in the following:
    | title                                | Test Self-service |
    | field_displayed_title[und][0][value] | description       |
    | field_image_alt_text[und][0][value]  | alttext           |
    | field_teaser[und][0][value]          | teaser            |
    | field_internal_title[und][0][value]  | internal name     |
    | field_external_link[und][0][url]     | www.google.com    |

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Self-service"



  Scenario: Adding new Slider element
    When I am on "node/add"
    Then I follow "Slider element"
    And I should be on "node/add/slider-element"
    Then I fill in "title" with "Test Slider element"
    Then I fill in the following:
      | title                                | Test Slider element |
      | field_description[und][0][value]     | description         |
      | field_link_text[und][0][value]       | Slider menu text    |
      | field_image_alt_text[und][0][value]  | alt text            |
      | field_internal_title[und][0][value]  | internal name       |

    And I follow "Browse"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe
    Then I fill "field_external_link[und][0][url]" with "www.google.com"

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Slider element"


  Scenario: Adding new FAQ
    When I am on "node/add"
    Then I follow "Spørgsmål og svar"
    And I should be on "node/add/faq"
    Then I fill in the following:
      | title                                                | Test Spørgsmål og svar |
      | field_displayed_title[und][0][value]                 | title                  |
      | field_faq[und][0][field_faq_question][und][0][value] | Question 1             |

    Then I work with "edit-field-faq-und-0-field-faq-answer-und-0-value" WYSIWYG editor
    And I type "Answer 1" in "edit-field-faq-und-0-field-faq-answer-und-0-value" WYSIWYG editor
    Then I press "edit-field-faq-und-add-more" element
    And I wait until AJAX is finished
    And I fill "field_faq[und][1][field_faq_question][und][0][value]" with "Question 2"
    Then I work with "field_faq[und][1][field_faq_question][und][0][value]" WYSIWYG editor
    And I type "Answer 2" in "edit-field-faq-und-1-field-faq-answer-und-0-value" WYSIWYG editor
    Then I fill "edit-field-internal-title-und-0-value" with "Internal name"

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds


  Scenario: Adding new Volunteer jobs
    When I am on "node/add"
    Then I follow "Volunteer jobs"
    And I should be on "node/add/volunteer-jobs"
    Then I fill in the following:
      | title                                                  | Title Volunteer jobs |
      | field_volunteer_jobs_resume[und][0][value]             | Test Volunteer jobs  |
      | field_volunteer_jobs_institution[und][0][value]        | Organization         |
      | field_volunteer_jobs_apply_url[und][0][title]          | Apply here           |
      | field_volunteer_jobs_apply_url[und][0][url]            | www.google.com       |

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Volunteer jobs"



  Scenario: Adding new Webform
    When I am on "node/add"
    Then I follow "Webformular"
    And I should be on "node/add/webform"
    Then I fill in the following:
      | title                                    | Test webform |
      | field_internal_title[und][0][value]      | int Webform  |
      | field_teaser[und][0][value]              | Teaser       |

    And I work with "edit-body-und-0-value" WYSIWYG editor
    And I type "WYSIWYG" in "edit-body-und-0-value" WYSIWYG editor
    Then I typed "a" in the "edit-field-taxonomy-kle-und" field and chose 1 option from autocomplete variants
    And I follow "Browse"
    And I wait 3 seconds
    Then I switch to an iframe "mediaBrowser"
    And I attach the file "test1.jpg" to "edit-upload-upload"
    And I press "Næste"
    And I fill in "edit-field-file-image-alt-text-und-0-value" with "text"
    Then I press "Gem"
    And I switch back from an iframe
    Then I fill in the following:
      | field_image_description[und][0][value]   | Image description |
      | field_video[und][0][value]               | Video             |
      | field_video_description[und][0][value]   | Video description |

    Then I select the following in "Taxonomy, Subject Area " hierarchical select:
      | Favrskov.dk (1)     |
      | Borger (417)        |
      | Natur og miljø (59) |

    And I wait until AJAX is finished
    And I press "op"
    And I wait until AJAX is finished
    Then I select "Dummy" from "field_taxonomy_location[und][0][tid]"
    And I typed "b" in the "field_taxonomy_local[und]" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished
    Then I typed "a" in the "edit-field-related-boxes-und-0-nid" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished
    Then I typed "a" in the "field_editorial_responsibility[und][0][uid]" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished
    Then I typed "a" in the "field_related_content[und][0][nid]" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished
    Then I typed "a" in the "field_contact_information[und][0][nid]" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished
    Then I typed "a" in the "field_faq_ref[und][0][nid]" field and chose 1 option from autocomplete variants
    And I wait until AJAX is finished

    Then I follow "Publishing options"
#   And I check "edit-status"
    And I uncheck "edit-status"
    When I press "Gem" element
    And I wait 2 seconds
    And I should see "Test Webform"