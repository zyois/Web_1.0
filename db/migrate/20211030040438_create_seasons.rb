class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :name
      t.string :showed_name
      t.string :seriese_name

      t.timestamps
    end
  end
end
