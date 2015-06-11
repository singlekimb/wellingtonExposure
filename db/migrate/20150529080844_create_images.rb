class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :colour

      t.timestamps null: false
    end
  end
end
