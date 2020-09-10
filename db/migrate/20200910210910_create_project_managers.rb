class CreateProjectManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :project_managers do |t|
      t.string :name
      t.string :nick_name
      t.string :phone
      t.string :email
      t.string :bio

      t.timestamps
    end
  end
end
