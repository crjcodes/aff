require 'test_helper'

class KeyRefMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @key_ref_map = key_ref_maps(:one)
  end

  test "should get index" do
    get key_ref_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_key_ref_map_url
    assert_response :success
  end

  test "should create key_ref_map" do
    assert_difference('KeyRefMap.count') do
      post key_ref_maps_url, params: { key_ref_map: { book: @key_ref_map.book, chapter: @key_ref_map.chapter, keyword_id: @key_ref_map.keyword_id, verse_end: @key_ref_map.verse_end, verse_start: @key_ref_map.verse_start } }
    end

    assert_redirected_to key_ref_map_url(KeyRefMap.last)
  end

  test "should show key_ref_map" do
    get key_ref_map_url(@key_ref_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_key_ref_map_url(@key_ref_map)
    assert_response :success
  end

  test "should update key_ref_map" do
    patch key_ref_map_url(@key_ref_map), params: { key_ref_map: { book: @key_ref_map.book, chapter: @key_ref_map.chapter, keyword_id: @key_ref_map.keyword_id, verse_end: @key_ref_map.verse_end, verse_start: @key_ref_map.verse_start } }
    assert_redirected_to key_ref_map_url(@key_ref_map)
  end

  test "should destroy key_ref_map" do
    assert_difference('KeyRefMap.count', -1) do
      delete key_ref_map_url(@key_ref_map)
    end

    assert_redirected_to key_ref_maps_url
  end
end
