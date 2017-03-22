class Label < ApplicationRecord
  enum colour: [:default, :primary, :success, :info, :warning, :danger]

  # Associations
  has_many :labelables, dependent: :destroy
  has_many :users, through: :labelables

  # Validations

end
