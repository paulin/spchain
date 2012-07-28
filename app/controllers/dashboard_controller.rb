class DashboardController < ApplicationController
  def show
    @solutions = Solution.all
    @problems = Problem.all
    
    respond_to do |format|
      format.html # show.html.erb
    end    
  end
end
