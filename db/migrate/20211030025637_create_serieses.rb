class CreateSerieses < ActiveRecord::Migration[5.2]
  def change
    create_table :serieses do |t|
      t.string :name
      t.string :work_name

      t.timestamps
    end
  end
end
