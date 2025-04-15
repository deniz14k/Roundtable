class Meeting < ApplicationRecord
    has_many :items, dependent: :destroy
  end
    # The Meeting class represents a meeting and has a one-to-many relationship with the Item class.  