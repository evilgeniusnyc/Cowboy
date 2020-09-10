class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :budget
      t.string :est_work_hours
      t.string :completion_stage

      t.timestamps
    end
  end
end
