class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :material_id

      t.timestamps
    end
  end
end
