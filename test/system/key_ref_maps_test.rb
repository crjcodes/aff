require "application_system_test_case"

class KeyRefMapsTest < ApplicationSystemTestCase
  setup do
    @key_ref_map = key_ref_maps(:one)
  end

  test "visiting the index" do
    visit key_ref_maps_url
    assert_selector "h1", text: "Key Ref Maps"
  end

  test "creating a Key ref map" do
    visit key_ref_maps_url
    click_on "New Key Ref Map"

    fill_in "Book", with: @key_ref_map.book
    fill_in "Chapter", with: @key_ref_map.chapter
    fill_in "Keyword", with: @key_ref_map.keyword_id
    fill_in "Verse end", with: @key_ref_map.verse_end
    fill_in "Verse start", with: @key_ref_map.verse_start
    click_on "Create Key ref map"

    assert_text "Key ref map was successfully created"
    click_on "Back"
  end

  test "updating a Key ref map" do
    visit key_ref_maps_url
    click_on "Edit", match: :first

    fill_in "Book", with: @key_ref_map.book
    fill_in "Chapter", with: @key_ref_map.chapter
    fill_in "Keyword", with: @key_ref_map.keyword_id
    fill_in "Verse end", with: @key_ref_map.verse_end
    fill_in "Verse start", with: @key_ref_map.verse_start
    click_on "Update Key ref map"

    assert_text "Key ref map was successfully updated"
    click_on "Back"
  end

  test "destroying a Key ref map" do
    visit key_ref_maps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Key ref map was successfully destroyed"
  end
end
