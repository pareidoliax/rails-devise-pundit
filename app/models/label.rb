class Label < ApplicationRecord
  enum colour: [:default, :primary, :success, :info, :warning, :danger]

  # Associations
  has_many :labelables, dependent: :destroy
  has_many :users, through: :labelables

  # Validations
  validates :name, presence: true,
                   length: { in: 2..32 },
                   uniqueness: { scope: :colour, case_sensitive: false }

  validates :colour, presence: true



  # Instance Methods
  def return_self
    return self
  end

end
