class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
    	t.string :due
    	t.text :description
    	t.string :priority
    	t.string :progress, default: "In-Progress"
    	t.timestamps

    end
  end
end
