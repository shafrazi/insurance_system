class Customer < ApplicationRecord
  has_many :insurance_policies, dependent: :destroy, inverse_of: :customer
  accepts_nested_attributes_for :insurance_policies, reject_if: :all_blank, allow_destroy: true
end
