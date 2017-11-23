class CreateCompletedAtSubtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_at_subtasks do |t|
      t.datetime :completed_at
    end
  end
end
