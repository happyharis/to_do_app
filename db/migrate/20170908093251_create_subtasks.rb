class CreateSubtasks < ActiveRecord::Migration[5.1]
  def change
    create_table :subtasks do |t|
    	t.text :description
    	t.string :priority
    	t.string :due
    	t.string :progress, default: "In-Progress"
        t.references :tasks, index: true
    	t.timestamps
    end
  end
end
