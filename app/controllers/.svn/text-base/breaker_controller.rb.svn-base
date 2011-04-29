class BreakerController < ApplicationController
  # Returns a random problem to solve
  def new
    solutionNum = rand(Solution.count -1) + 1
    @solution= Solution.find(solutionNum)    
    @problem = Problem.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @problem }
    end
  end  
end
