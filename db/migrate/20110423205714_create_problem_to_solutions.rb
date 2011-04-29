class CreateProblemToSolutions < ActiveRecord::Migration
  def self.up
    create_table :problem_to_solutions do |t|
      t.integer :solution_id
      t.integer :problem_id
      t.timestamps
    end
  end

  def self.down
    drop_table :problem_to_solutions
  end
end
