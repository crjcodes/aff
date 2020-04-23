class Keyword < ApplicationRecord
    validates :kw, presence: true

    validates :kw, length: { minimum: 2 }
    validates :kw, length: { maximum: 30, too_long: "%{count} characters is the maximum allowed" }
    validates :kw, format: /\A[\sa-z ]+\Z/i
end
