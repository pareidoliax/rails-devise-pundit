class Labelable < ApplicationRecord
  belongs_to :user
  belongs_to :label
end
