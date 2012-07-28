class Problem < ActiveRecord::Base
  attr_accessible :description
  
  has_many :solution_to_problems
  has_many :problem_to_solutions
  has_many :solutions, :through => :solution_to_problems
  has_many :broken_solutions, :through => :problem_to_solutions, :source => :solution
  
  validates :description, :presence => true,
                    :length => { :minimum => 10} 
end
