class CreateKeyRefMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :key_ref_maps do |t|
      t.string :book
      t.integer :chapter
      t.integer :verse_start
      t.integer :verse_end
      t.references :keyword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
