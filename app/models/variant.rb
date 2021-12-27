class Variant < ApplicationRecord
  belongs_to :product, required: true
  validates :name , presence: true , length: {minimum: 3, maximum: 100}
  validates :price , presence:true , numericality: { greater_than: 0}
end