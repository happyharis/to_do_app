class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
    	
    	t.text :description
    	t.string :priority
    	t.references :task, foreign_key: true
    	t.timestamps

    end
  end
end
