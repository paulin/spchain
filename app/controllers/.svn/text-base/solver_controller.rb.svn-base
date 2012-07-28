class SolverController < ApplicationController
  
  # Returns a random problem to solve
  def new
    problemNum = rand(Problem.count -1) + 1
    @problem = Problem.find(problemNum)    
    @solution = Solution.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @solution }
    end
  end   
end
