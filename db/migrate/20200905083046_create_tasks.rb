class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.user :references

      t.timestamps
    end
  end
end
