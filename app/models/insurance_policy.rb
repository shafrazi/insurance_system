class InsurancePolicy < ApplicationRecord
  belongs_to :customer
  has_many :renewals, dependent: :destroy
end
