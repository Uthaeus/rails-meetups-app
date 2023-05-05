require "application_system_test_case"

class MeetupsTest < ApplicationSystemTestCase
  setup do
    @meetup = meetups(:one)
  end

  test "visiting the index" do
    visit meetups_url
    assert_selector "h1", text: "Meetups"
  end

  test "should create meetup" do
    visit meetups_url
    click_on "New meetup"

    fill_in "Date", with: @meetup.date
    fill_in "Description", with: @meetup.description
    fill_in "Main image", with: @meetup.main_image
    fill_in "Thumb image", with: @meetup.thumb_image
    fill_in "Time", with: @meetup.time
    fill_in "Title", with: @meetup.title
    click_on "Create Meetup"

    assert_text "Meetup was successfully created"
    click_on "Back"
  end

  test "should update Meetup" do
    visit meetup_url(@meetup)
    click_on "Edit this meetup", match: :first

    fill_in "Date", with: @meetup.date
    fill_in "Description", with: @meetup.description
    fill_in "Main image", with: @meetup.main_image
    fill_in "Thumb image", with: @meetup.thumb_image
    fill_in "Time", with: @meetup.time
    fill_in "Title", with: @meetup.title
    click_on "Update Meetup"

    assert_text "Meetup was successfully updated"
    click_on "Back"
  end

  test "should destroy Meetup" do
    visit meetup_url(@meetup)
    click_on "Destroy this meetup", match: :first

    assert_text "Meetup was successfully destroyed"
  end
end
