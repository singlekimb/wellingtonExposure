class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :colour
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :users
  end
end
