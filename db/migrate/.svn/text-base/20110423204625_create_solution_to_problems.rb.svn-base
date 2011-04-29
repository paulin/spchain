class CreateSolutionToProblems < ActiveRecord::Migration
  def self.up
    create_table :solution_to_problems do |t|
      t.integer :solution_id
      t.integer :problem_id
      t.timestamps
    end
  end

  def self.down
    drop_table :solution_to_problems
  end
end
