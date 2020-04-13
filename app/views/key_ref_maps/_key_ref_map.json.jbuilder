json.extract! key_ref_map, :id, :book, :chapter, :verse_start, :verse_end, :keyword_id, :created_at, :updated_at
json.url key_ref_map_url(key_ref_map, format: :json)
