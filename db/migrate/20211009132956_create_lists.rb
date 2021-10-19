class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :work_name
      t.string :episode
      t.string :episode_title
      t.string :album
      t.string :track
      t.string :name
      t.string :time
      t.string :timing
      t.string :scene
      t.string :theme
      t.string :other

      t.timestamps
    end
  end
end
