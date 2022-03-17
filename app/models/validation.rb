class Validation < ApplicationRecord
  validates :first_name, presence: true
  validates :first_name, uniqueness: true
  validates :last_name, presence: true
  validates :last_name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
