class Review < ApplicationRecord
  belongs_to :restaurant
  # validations
  validates :content, presence: true
  # validates :restaurant_id, presence: true
  # https://guides.rubyonrails.org/active_record_validations.html#numericality
  #
  # validates_inclusion_of :number, :in => {0..5}
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 0..5 }
end
