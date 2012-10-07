class Basic < ActiveRecord::Base
  attr_accessible :waiver_of_premium, :client_number, :additional_information
  
  attr_accessor :client_side_override
  
  validates :waiver_of_premium, :inclusion => { in: ["Yes", "No" ] }, if: :client_side_recommended?
  validates :client_number, presence: true, if: :client_side_recommended?
  
  def client_side_recommended?
    client_side_override == true
  end
end
