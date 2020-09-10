class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.string :description
      t.integer :completion_stage
      t.references :project, null: false, foreign_key: true
      t.references :project_manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
