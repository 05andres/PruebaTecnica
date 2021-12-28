
class Dashboard < ApplicationRecord
  validates :requested,presence: true , numericality: { only_integer: true }
  validates :loaded,presence: true , numericality: { only_integer: true }
  validates :not_loaded,presence: true , numericality: { only_integer: true }
end