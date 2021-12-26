class Variant < ApplicationRecord
  belongs_to :product, required: true
  validates :title , presence: true , length: {minimum: 3, maximum: 100}
  validates :description , presence: true, length: {minimum: 5 , maximum: 300}
  validates :price , presence:true , numericality: { greater_than: 0}
end