# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Keyword.destroy_all

#Keyword.create! (
#    [
#        { kw: "encouragement" },
#        { kw: "anxiety" }
#    ]
#)

enc = Keyword.create(kw: "encouragement")
anx = Keyword.create(kw: "anxiety")

p "Created #{Keyword.count} affirm keywords"

KeyRefMap.destroy_all

KeyRefMap.create(keyword_id: enc.id, book: "Matthew", chapter: 6, verse_start: 34, verse_end: 34  )
KeyRefMap.create(keyword_id: enc.id, book: "John", chapter: 14, verse_start: 27, verse_end: 27  )
KeyRefMap.create(keyword_id: enc.id, book: "2 Corinthians", chapter: 4, verse_start: 16, verse_end: 18 )
KeyRefMap.create(keyword_id: enc.id, book: "Psalm", chapter: 9, verse_start: 9, verse_end: 10 )
KeyRefMap.create(keyword_id: enc.id, book: "Isaiah", chapter: 26, verse_start: 3, verse_end: 4 )

KeyRefMap.create(keyword_id: anx.id, book: "Matthew", chapter: 11, verse_start: 28, verse_end: 30 )
KeyRefMap.create(keyword_id: anx.id, book: "John", chapter: 14, verse_start: 27, verse_end: 27 )
KeyRefMap.create(keyword_id: anx.id, book: "Proverbs", chapter: 12, verse_start: 25, verse_end: 25 )




