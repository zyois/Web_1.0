class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :level
      t.string :relation

      t.timestamps
    end
  end
end
