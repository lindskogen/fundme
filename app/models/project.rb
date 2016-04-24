class Project < ActiveRecord::Base
  belongs_to :user
  has_many :fundings


  def total_funding
    self.fundings.sum(:amount)
  end
end
