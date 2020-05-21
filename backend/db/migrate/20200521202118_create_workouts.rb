class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :reps 
      t.integer :sets
      t.integer :user_id
    end
  end
end
