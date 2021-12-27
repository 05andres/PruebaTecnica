class Product < ApplicationRecord
  has_many :variants
  validates :name , presence: true , length: {minimum: 3, maximum: 100}
  validates :description , presence: true, length: {minimum: 5 , maximum: 300}
end