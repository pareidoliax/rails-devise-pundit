class Labelable < ApplicationRecord

  # Associations
  belongs_to :user
  belongs_to :label
end
