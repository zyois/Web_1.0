class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :work_name
      t.integer :list_id

      t.timestamps
    end
  end
end
