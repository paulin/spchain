class SolutionsController < ApplicationController
  # GET /solutions
  # GET /solutions.xml
  def index
    @solutions = Solution.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @solutions }
    end
  end

  # GET /solutions/1
  # GET /solutions/1.xml
  def show
    @solution = Solution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @solution }
    end
  end

  # GET /solutions/new
  # GET /solutions/new.xml
  def new
    @solution = Solution.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @solution }
    end
  end

  # GET /solutions/1/edit
  def edit
    @solution = Solution.find(params[:id])
  end

  # POST /solutions
  # POST /solutions.xml
  def create
    problem_id = params['problem']['id']
    
    @solution = Solution.new(params[:solution])

    respond_to do |format|
      if @solution.save
        
        if problem_id != nil
          @problem = Problem.find(problem_id)
          @solution.solved_problems << @problem
          #@problem.solutions << @solution
          
          # Left off here http://stackoverflow.com/questions/2170108/activerecordhasmanythroughassociationnotfounderror-in-usercontrollerwelcome
        end

        
        format.html { redirect_to(@solution, :notice => 'Solution was successfully created.') }
        format.xml  { render :xml => @solution, :status => :created, :location => @solution }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @solution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /solutions/1
  # PUT /solutions/1.xml
  def update
    @solution = Solution.find(params[:id])

    respond_to do |format|
      if @solution.update_attributes(params[:solution])
        format.html { redirect_to(@solution, :notice => 'Solution was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @solution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /solutions/1
  # DELETE /solutions/1.xml
  def destroy
    @solution = Solution.find(params[:id])
    @solution.destroy

    respond_to do |format|
      format.html { redirect_to(solutions_url) }
      format.xml  { head :ok }
    end
  end
end
