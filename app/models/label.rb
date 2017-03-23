class Label < ApplicationRecord
  enum colour: [:default, :primary, :success, :info, :warning, :danger]

  # Associations
  has_many :labelables, dependent: :destroy
  has_many :users, through: :labelables

  # Validations

  # Instance Methods
  def return_self
    return self
  end

end
