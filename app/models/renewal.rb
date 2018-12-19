class Renewal < ApplicationRecord
  belongs_to :insurance_policy
  validates :policyno, presence: true
  validates :begin_date, presence: true
  validates :expiry_date, presence: true
end
