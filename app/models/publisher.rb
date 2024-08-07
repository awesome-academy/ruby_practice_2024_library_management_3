class Publisher < ApplicationRecord
  has_many :books, dependent: :destroy

  validates :publisher_name, presence: true
end
