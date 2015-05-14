class CreateFlavours < ActiveRecord::Migration
  def change
    create_table :flavours do |t|
      t.string :name
      t.string :mood
      t.string :personality
      t.string :cheekyness
      t.string :transport
      t.text :scenariotube

      t.timestamps null: false
    end
  end
end
