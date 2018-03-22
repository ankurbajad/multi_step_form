class Candidate < ApplicationRecord
  has_many :districts #, :dependent => :destroy

  accepts_nested_attributes_for :districts #, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  #accepted_nested_attributes :districts

  include MultiStepModel

  def self.total_steps
    3
  end
end
