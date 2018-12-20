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

  filterrific(
   default_filter_params: { sorted_by: 'created_at_desc' },
   available_filters: [
     :sorted_by,
     :search_query,
     :with_current_expiry
   ]
 )

 scope :search_query, lambda { |query|
    # Filters students whose name or email matches the query

  }
  scope :sorted_by, lambda { |sort_key|
    # Sorts students by sort_key

  }
  scope :with_current_expiry, lambda { |ref_date|

  }

  # This method provides select options for the `sorted_by` filter select input.
  # It is called in the controller as part of `initialize_filterrific`.
  def self.options_for_sorted_by
    [
      ['Name (a-z)', 'name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc']
    ]
  end
end
