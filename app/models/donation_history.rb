class DonationHistory < ApplicationRecord
  # Relationships
  # -----------------------------
  belongs_to :constituent
  belongs_to :donation_program

  # Scopes
  # -----------------------------


  # Validations
  # -----------------------------
  #compulsory fields
  validates_presence_of :donation_history_id
  # validates_presence_of :lookup_id
  validates_presence_of :amount
  validates_numericality_of :amount, :greater_than=> 0
  validates_presence_of :date
  validates_date :date, :on_or_before => Date.today
  validates_presence_of :method
  validates_presence_of :do_not_acknowledge
  validates_presence_of :given_anonymously
  validates_presence_of :transaction_type


  # Other methods
  # -------------



  private
end
