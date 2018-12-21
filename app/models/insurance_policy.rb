class InsurancePolicy < ApplicationRecord
  belongs_to :customer
  has_many :renewals, dependent: :destroy, inverse_of: :insurance_policy
  accepts_nested_attributes_for :renewals, reject_if: :all_blank, allow_destroy: true
  validates :policyno, presence: true
  validates :insurer, presence: true
  validates :value, presence: true
  validates :insurance_type, presence: true
  validates :current_expiry, presence: true
  validates :customer_id, presence: true

end
